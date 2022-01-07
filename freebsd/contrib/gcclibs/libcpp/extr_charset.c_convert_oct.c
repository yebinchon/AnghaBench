
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uchar ;
struct _cpp_strbuf {int dummy; } ;
typedef char cppchar_t ;
typedef int cpp_reader ;


 int CPP_DL_PEDWARN ;
 size_t CPP_OPTION (int *,int ) ;
 int char_precision ;
 int cpp_error (int *,int ,char*) ;
 int emit_numeric_escape (int *,char,struct _cpp_strbuf*,int) ;
 int wchar_precision ;
 size_t width_to_mask (size_t) ;

__attribute__((used)) static const uchar *
convert_oct (cpp_reader *pfile, const uchar *from, const uchar *limit,
      struct _cpp_strbuf *tbuf, bool wide)
{
  size_t count = 0;
  cppchar_t c, n = 0;
  size_t width = (wide ? CPP_OPTION (pfile, wchar_precision)
    : CPP_OPTION (pfile, char_precision));
  size_t mask = width_to_mask (width);
  bool overflow = 0;

  while (from < limit && count++ < 3)
    {
      c = *from;
      if (c < '0' || c > '7')
 break;
      from++;
      overflow |= n ^ (n << 3 >> 3);
      n = (n << 3) + c - '0';
    }

  if (n != (n & mask))
    {
      cpp_error (pfile, CPP_DL_PEDWARN,
   "octal escape sequence out of range");
      n &= mask;
    }

  emit_numeric_escape (pfile, n, tbuf, wide);

  return from;
}
