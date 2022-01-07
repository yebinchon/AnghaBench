
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uchar ;
struct cset_converter {int dummy; } ;
struct _cpp_strbuf {int dummy; } ;
struct TYPE_10__ {struct cset_converter narrow_cset_desc; struct cset_converter wide_cset_desc; } ;
typedef TYPE_1__ cpp_reader ;


 int APPLY_CONVERSION (struct cset_converter,int*,int,struct _cpp_strbuf*) ;
 int CPP_DL_ERROR ;
 int CPP_DL_PEDWARN ;
 int CPP_DL_WARNING ;
 int CPP_PEDANTIC (TYPE_1__*) ;
 int CPP_WTRADITIONAL (TYPE_1__*) ;
 int ISGRAPH (int) ;
 int const* convert_hex (TYPE_1__*,int const*,int const*,struct _cpp_strbuf*,int) ;
 int const* convert_oct (TYPE_1__*,int const*,int const*,struct _cpp_strbuf*,int) ;
 int const* convert_ucn (TYPE_1__*,int const*,int const*,struct _cpp_strbuf*,int) ;
 int cpp_errno (TYPE_1__*,int ,char*) ;
 int cpp_error (TYPE_1__*,int ,char*,...) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const uchar *
convert_escape (cpp_reader *pfile, const uchar *from, const uchar *limit,
  struct _cpp_strbuf *tbuf, bool wide)
{


  static const uchar charconsts[] = { 7, 8, 27, 12, 10, 13, 9, 11 };






  uchar c;
  struct cset_converter cvt
    = wide ? pfile->wide_cset_desc : pfile->narrow_cset_desc;

  c = *from;
  switch (c)
    {

    case 'u': case 'U':
      return convert_ucn (pfile, from, limit, tbuf, wide);

    case 'x':
      return convert_hex (pfile, from, limit, tbuf, wide);
      break;

    case '0': case '1': case '2': case '3':
    case '4': case '5': case '6': case '7':
      return convert_oct (pfile, from, limit, tbuf, wide);



    case '\\': case '\'': case '"': case '?': break;

    case '(': case '{': case '[': case '%':




      if (CPP_PEDANTIC (pfile))
 goto unknown;
      break;

    case 'b': c = charconsts[1]; break;
    case 'f': c = charconsts[3]; break;
    case 'n': c = charconsts[4]; break;
    case 'r': c = charconsts[5]; break;
    case 't': c = charconsts[6]; break;
    case 'v': c = charconsts[7]; break;

    case 'a':
      if (CPP_WTRADITIONAL (pfile))
 cpp_error (pfile, CPP_DL_WARNING,
     "the meaning of '\\a' is different in traditional C");
      c = charconsts[0];
      break;

    case 'e': case 'E':
      if (CPP_PEDANTIC (pfile))
 cpp_error (pfile, CPP_DL_PEDWARN,
     "non-ISO-standard escape sequence, '\\%c'", (int) c);
      c = charconsts[2];
      break;

    default:
    unknown:
      if (ISGRAPH (c))
 cpp_error (pfile, CPP_DL_PEDWARN,
     "unknown escape sequence '\\%c'", (int) c);
      else
 {


   char buf[32];
   sprintf(buf, "%03o", (int) c);
   cpp_error (pfile, CPP_DL_PEDWARN,
       "unknown escape sequence: '\\%s'", buf);
 }
    }


  if (!APPLY_CONVERSION (cvt, &c, 1, tbuf))
    cpp_errno (pfile, CPP_DL_ERROR,
        "converting escape sequence to execution character set");

  return from + 1;
}
