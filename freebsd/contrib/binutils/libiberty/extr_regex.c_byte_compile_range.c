
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int reg_syntax_t ;
typedef int reg_errcode_t ;
typedef int RE_TRANSLATE_TYPE ;


 int BYTEWIDTH ;
 int LC_COLLATE ;
 int REG_ERANGE ;
 int REG_NOERROR ;
 int RE_NO_EMPTY_RANGES ;
 int SET_LIST_BIT (unsigned int) ;
 unsigned int TRANSLATE (char const) ;
 int _NL_COLLATE_COLLSEQMB ;
 scalar_t__ _NL_CURRENT (int ,int ) ;

__attribute__((used)) static reg_errcode_t
byte_compile_range (unsigned int range_start_char, const char **p_ptr,
                    const char *pend, RE_TRANSLATE_TYPE translate,
                    reg_syntax_t syntax, unsigned char *b)
{
  unsigned this_char;
  const char *p = *p_ptr;
  reg_errcode_t ret;





  unsigned end_char;


  if (p == pend)
    return REG_ERANGE;



  (*p_ptr)++;


  ret = syntax & RE_NO_EMPTY_RANGES ? REG_ERANGE : REG_NOERROR;
  range_start_char = TRANSLATE (range_start_char);





  end_char = ((unsigned)TRANSLATE(p[0]) & ((1 << BYTEWIDTH) - 1));

  for (this_char = range_start_char; this_char <= end_char; ++this_char)
    {
      SET_LIST_BIT (TRANSLATE (this_char));
      ret = REG_NOERROR;
    }


  return ret;
}
