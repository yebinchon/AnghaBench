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
typedef  scalar_t__ unicode_t ;
struct super_block {int dummy; } ;
struct nls_table {int (* uni2char ) (scalar_t__,char*,int) ;int /*<<< orphan*/  charset; } ;
struct TYPE_2__ {struct nls_table* nls; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int EILSEQ ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ MAX_WCHAR_T ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,char*,int) ; 
 int FUNC6 (char const*,int,scalar_t__*) ; 

__attribute__((used)) static int
FUNC7(struct super_block *sb, const char *in,
	     int in_len, char **out, int *out_len)
{
	struct nls_table *nls = FUNC0(sb)->nls;
	int i, o;
	unicode_t uni;
	int unilen, utflen;
	char *result;
	/* The utf8->nls conversion won't make the final nls string bigger
	 * than the utf one, but if the string is pure ascii they'll have the
	 * same width and an extra char is needed to save the additional \0
	 */
	int maxlen = in_len + 1;

	FUNC1(sb, "---> utf2nls()");

	if (!nls) {
		FUNC2(sb, "befs_utf2nls called with no NLS table loaded");
		return -EINVAL;
	}

	*out = result = FUNC4(maxlen, GFP_NOFS);
	if (!*out) {
		FUNC2(sb, "befs_utf2nls() cannot allocate memory");
		*out_len = 0;
		return -ENOMEM;
	}

	for (i = o = 0; i < in_len; i += utflen, o += unilen) {

		/* convert from UTF-8 to Unicode */
		utflen = FUNC6(&in[i], in_len - i, &uni);
		if (utflen < 0)
			goto conv_err;

		/* convert from Unicode to nls */
		if (uni > MAX_WCHAR_T)
			goto conv_err;
		unilen = nls->uni2char(uni, &result[o], in_len - o);
		if (unilen < 0)
			goto conv_err;
	}
	result[o] = '\0';
	*out_len = o;

	FUNC1(sb, "<--- utf2nls()");

	return o;

      conv_err:
	FUNC2(sb, "Name using character set %s contains a character that "
		   "cannot be converted to unicode.", nls->charset);
	FUNC1(sb, "<--- utf2nls()");
	FUNC3(result);
	return -EILSEQ;
}