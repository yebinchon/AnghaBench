
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t cppchar_t ;
struct TYPE_3__ {int len; size_t* text; } ;
typedef TYPE_1__ cpp_string ;
typedef int cpp_reader ;


 size_t BITS_PER_CPPCHAR_T ;
 int CPP_DL_WARNING ;
 size_t CPP_OPTION (int *,int ) ;
 int char_precision ;
 int cpp_error (int *,int ,char*) ;
 int int_precision ;
 int unsigned_char ;
 int warn_multichar ;
 size_t width_to_mask (size_t) ;

__attribute__((used)) static cppchar_t
narrow_str_to_charconst (cpp_reader *pfile, cpp_string str,
    unsigned int *pchars_seen, int *unsignedp)
{
  size_t width = CPP_OPTION (pfile, char_precision);
  size_t max_chars = CPP_OPTION (pfile, int_precision) / width;
  size_t mask = width_to_mask (width);
  size_t i;
  cppchar_t result, c;
  bool unsigned_p;
  result = 0;
  for (i = 0; i < str.len - 1; i++)
    {
      c = str.text[i] & mask;
      if (width < BITS_PER_CPPCHAR_T)
 result = (result << width) | c;
      else
 result = c;
    }

  if (i > max_chars)
    {
      i = max_chars;
      cpp_error (pfile, CPP_DL_WARNING,
   "character constant too long for its type");
    }
  else if (i > 1 && CPP_OPTION (pfile, warn_multichar))
    cpp_error (pfile, CPP_DL_WARNING, "multi-character character constant");


  if (i > 1)
    unsigned_p = 0;
  else
    unsigned_p = CPP_OPTION (pfile, unsigned_char);





  if (i > 1)
    width = CPP_OPTION (pfile, int_precision);
  if (width < BITS_PER_CPPCHAR_T)
    {
      mask = ((cppchar_t) 1 << width) - 1;
      if (unsigned_p || !(result & (1 << (width - 1))))
 result &= mask;
      else
 result |= ~mask;
    }
  *pchars_seen = i;
  *unsignedp = unsigned_p;
  return result;
}
