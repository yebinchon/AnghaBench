#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uchar ;
struct cset_converter {int dummy; } ;
struct _cpp_strbuf {int dummy; } ;
struct TYPE_10__ {struct cset_converter narrow_cset_desc; struct cset_converter wide_cset_desc; } ;
typedef  TYPE_1__ cpp_reader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cset_converter,int*,int,struct _cpp_strbuf*) ; 
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  CPP_DL_PEDWARN ; 
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int const* FUNC4 (TYPE_1__*,int const*,int const*,struct _cpp_strbuf*,int) ; 
 int const* FUNC5 (TYPE_1__*,int const*,int const*,struct _cpp_strbuf*,int) ; 
 int const* FUNC6 (TYPE_1__*,int const*,int const*,struct _cpp_strbuf*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 

__attribute__((used)) static const uchar *
FUNC10 (cpp_reader *pfile, const uchar *from, const uchar *limit,
		struct _cpp_strbuf *tbuf, bool wide)
{
  /* Values of \a \b \e \f \n \r \t \v respectively.  */
#if HOST_CHARSET == HOST_CHARSET_ASCII
  static const uchar charconsts[] = {  7,  8, 27, 12, 10, 13,  9, 11 };
#elif HOST_CHARSET == HOST_CHARSET_EBCDIC
  static const uchar charconsts[] = { 47, 22, 39, 12, 21, 13,  5, 11 };
#else
#error "unknown host character set"
#endif

  uchar c;
  struct cset_converter cvt
    = wide ? pfile->wide_cset_desc : pfile->narrow_cset_desc;

  c = *from;
  switch (c)
    {
      /* UCNs, hex escapes, and octal escapes are processed separately.  */
    case 'u': case 'U':
      return FUNC6 (pfile, from, limit, tbuf, wide);

    case 'x':
      return FUNC4 (pfile, from, limit, tbuf, wide);
      break;

    case '0':  case '1':  case '2':  case '3':
    case '4':  case '5':  case '6':  case '7':
      return FUNC5 (pfile, from, limit, tbuf, wide);

      /* Various letter escapes.  Get the appropriate host-charset
	 value into C.  */
    case '\\': case '\'': case '"': case '?': break;

    case '(': case '{': case '[': case '%':
      /* '\(', etc, can be used at the beginning of a line in a long
	 string split onto multiple lines with \-newline, to prevent
	 Emacs or other text editors from getting confused.  '\%' can
	 be used to prevent SCCS from mangling printf format strings.  */
      if (FUNC1 (pfile))
	goto unknown;
      break;

    case 'b': c = charconsts[1];  break;
    case 'f': c = charconsts[3];  break;
    case 'n': c = charconsts[4];  break;
    case 'r': c = charconsts[5];  break;
    case 't': c = charconsts[6];  break;
    case 'v': c = charconsts[7];  break;

    case 'a':
      if (FUNC2 (pfile))
	FUNC8 (pfile, CPP_DL_WARNING,
		   "the meaning of '\\a' is different in traditional C");
      c = charconsts[0];
      break;

    case 'e': case 'E':
      if (FUNC1 (pfile))
	FUNC8 (pfile, CPP_DL_PEDWARN,
		   "non-ISO-standard escape sequence, '\\%c'", (int) c);
      c = charconsts[2];
      break;

    default:
    unknown:
      if (FUNC3 (c))
	FUNC8 (pfile, CPP_DL_PEDWARN,
		   "unknown escape sequence '\\%c'", (int) c);
      else
	{
	  /* diagnostic.c does not support "%03o".  When it does, this
	     code can use %03o directly in the diagnostic again.  */
	  char buf[32];
	  FUNC9(buf, "%03o", (int) c);
	  FUNC8 (pfile, CPP_DL_PEDWARN,
		     "unknown escape sequence: '\\%s'", buf);
	}
    }

  /* Now convert what we have to the execution character set.  */
  if (!FUNC0 (cvt, &c, 1, tbuf))
    FUNC7 (pfile, CPP_DL_ERROR,
	       "converting escape sequence to execution character set");

  return from + 1;
}