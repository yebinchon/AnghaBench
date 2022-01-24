#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct super_block {int dummy; } ;
struct nls_table {int (* char2uni ) (char const*,int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  charset; } ;
struct TYPE_2__ {struct nls_table* nls; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int EILSEQ ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (char const*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int
FUNC7(struct super_block *sb, const char *in,
	     int in_len, char **out, int *out_len)
{
	struct nls_table *nls = FUNC0(sb)->nls;
	int i, o;
	wchar_t uni;
	int unilen, utflen;
	char *result;
	/* There're nls characters that will translate to 3-chars-wide UTF-8
	 * characters, a additional byte is needed to save the final \0
	 * in special cases */
	int maxlen = (3 * in_len) + 1;

	FUNC1(sb, "---> nls2utf()\n");

	if (!nls) {
		FUNC2(sb, "befs_nls2utf called with no NLS table loaded.");
		return -EINVAL;
	}

	*out = result = FUNC4(maxlen, GFP_NOFS);
	if (!*out) {
		FUNC2(sb, "befs_nls2utf() cannot allocate memory");
		*out_len = 0;
		return -ENOMEM;
	}

	for (i = o = 0; i < in_len; i += unilen, o += utflen) {

		/* convert from nls to unicode */
		unilen = nls->char2uni(&in[i], in_len - i, &uni);
		if (unilen < 0)
			goto conv_err;

		/* convert from unicode to UTF-8 */
		utflen = FUNC6(uni, &result[o], 3);
		if (utflen <= 0)
			goto conv_err;
	}

	result[o] = '\0';
	*out_len = o;

	FUNC1(sb, "<--- nls2utf()");

	return i;

      conv_err:
	FUNC2(sb, "Name using charecter set %s contains a charecter that "
		   "cannot be converted to unicode.", nls->charset);
	FUNC1(sb, "<--- nls2utf()");
	FUNC3(result);
	return -EILSEQ;
}