#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int wchar_t ;
struct nls_table {int (* char2uni ) (char const*,int,int*) ;} ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_MAX ; 
 int UNI_ASTERISK ; 
 int UNI_COLON ; 
 int UNI_GRTRTHAN ; 
 int UNI_LESSTHAN ; 
 int UNI_PIPE ; 
 int UNI_QUESTION ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,struct nls_table const*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int,int*) ; 

int
FUNC4(__le16 *target, const char *source, int srclen,
		 const struct nls_table *cp, int mapChars)
{
	int i, j, charlen;
	char src_char;
	__le16 dst_char;
	wchar_t tmp;

	if (!mapChars)
		return FUNC0(target, source, PATH_MAX, cp);

	for (i = 0, j = 0; i < srclen; j++) {
		src_char = source[i];
		charlen = 1;
		switch (src_char) {
		case 0:
			FUNC2(0, &target[j]);
			goto ctoUCS_out;
		case ':':
			dst_char = FUNC1(UNI_COLON);
			break;
		case '*':
			dst_char = FUNC1(UNI_ASTERISK);
			break;
		case '?':
			dst_char = FUNC1(UNI_QUESTION);
			break;
		case '<':
			dst_char = FUNC1(UNI_LESSTHAN);
			break;
		case '>':
			dst_char = FUNC1(UNI_GRTRTHAN);
			break;
		case '|':
			dst_char = FUNC1(UNI_PIPE);
			break;
		/*
		 * FIXME: We can not handle remapping backslash (UNI_SLASH)
		 * until all the calls to build_path_from_dentry are modified,
		 * as they use backslash as separator.
		 */
		default:
			charlen = cp->char2uni(source + i, srclen - i, &tmp);
			dst_char = FUNC1(tmp);

			/*
			 * if no match, use question mark, which at least in
			 * some cases serves as wild card
			 */
			if (charlen < 1) {
				dst_char = FUNC1(0x003f);
				charlen = 1;
			}
		}
		/*
		 * character may take more than one byte in the source string,
		 * but will take exactly two bytes in the target string
		 */
		i += charlen;
		FUNC2(dst_char, &target[j]);
	}

ctoUCS_out:
	return i;
}