
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uchar ;
struct _cpp_strbuf {int dummy; } ;
typedef int cppchar_t ;
typedef int cpp_reader ;


 int CPP_DL_ERROR ;
 int CPP_DL_PEDWARN ;
 int CPP_DL_WARNING ;
 size_t CPP_OPTION (int *,int ) ;
 scalar_t__ CPP_WTRADITIONAL (int *) ;
 int char_precision ;
 int cpp_error (int *,int ,char*) ;
 int emit_numeric_escape (int *,int,struct _cpp_strbuf*,int) ;
 int hex_p (int) ;
 int hex_value (int) ;
 int wchar_precision ;
 size_t width_to_mask (size_t) ;

__attribute__((used)) static const uchar *
convert_hex (cpp_reader *pfile, const uchar *from, const uchar *limit,
      struct _cpp_strbuf *tbuf, bool wide)
{
  cppchar_t c, n = 0, overflow = 0;
  int digits_found = 0;
  size_t width = (wide ? CPP_OPTION (pfile, wchar_precision)
    : CPP_OPTION (pfile, char_precision));
  size_t mask = width_to_mask (width);

  if (CPP_WTRADITIONAL (pfile))
    cpp_error (pfile, CPP_DL_WARNING,
        "the meaning of '\\x' is different in traditional C");

  from++;
  while (from < limit)
    {
      c = *from;
      if (! hex_p (c))
 break;
      from++;
      overflow |= n ^ (n << 4 >> 4);
      n = (n << 4) + hex_value (c);
      digits_found = 1;
    }

  if (!digits_found)
    {
      cpp_error (pfile, CPP_DL_ERROR,
   "\\x used with no following hex digits");
      return from;
    }

  if (overflow | (n != (n & mask)))
    {
      cpp_error (pfile, CPP_DL_PEDWARN,
   "hex escape sequence out of range");
      n &= mask;
    }

  emit_numeric_escape (pfile, n, tbuf, wide);

  return from;
}
