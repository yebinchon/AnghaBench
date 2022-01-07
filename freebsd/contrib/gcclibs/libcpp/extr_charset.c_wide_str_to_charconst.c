
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t cppchar_t ;
struct TYPE_3__ {size_t len; size_t* text; } ;
typedef TYPE_1__ cpp_string ;
typedef int cpp_reader ;


 size_t BITS_PER_CPPCHAR_T ;
 int CPP_DL_WARNING ;
 void* CPP_OPTION (int *,int ) ;
 int bytes_big_endian ;
 int char_precision ;
 int cpp_error (int *,int ,char*) ;
 int unsigned_wchar ;
 int wchar_precision ;
 size_t width_to_mask (size_t) ;

__attribute__((used)) static cppchar_t
wide_str_to_charconst (cpp_reader *pfile, cpp_string str,
         unsigned int *pchars_seen, int *unsignedp)
{
  bool bigend = CPP_OPTION (pfile, bytes_big_endian);
  size_t width = CPP_OPTION (pfile, wchar_precision);
  size_t cwidth = CPP_OPTION (pfile, char_precision);
  size_t mask = width_to_mask (width);
  size_t cmask = width_to_mask (cwidth);
  size_t nbwc = width / cwidth;
  size_t off, i;
  cppchar_t result = 0, c;




  off = str.len - (nbwc * 2);
  result = 0;
  for (i = 0; i < nbwc; i++)
    {
      c = bigend ? str.text[off + i] : str.text[off + nbwc - i - 1];
      result = (result << cwidth) | (c & cmask);
    }




  if (off > 0)
    cpp_error (pfile, CPP_DL_WARNING,
        "character constant too long for its type");



  if (width < BITS_PER_CPPCHAR_T)
    {
      if (CPP_OPTION (pfile, unsigned_wchar) || !(result & (1 << (width - 1))))
 result &= mask;
      else
 result |= ~mask;
    }

  *unsignedp = CPP_OPTION (pfile, unsigned_wchar);
  *pchars_seen = 1;
  return result;
}
