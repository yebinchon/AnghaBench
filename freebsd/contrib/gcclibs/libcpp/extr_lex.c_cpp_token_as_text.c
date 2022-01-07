
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpp_token ;
typedef int cpp_reader ;


 unsigned char* _cpp_unaligned_alloc (int *,unsigned int) ;
 unsigned char* cpp_spell_token (int *,int const*,unsigned char*,int) ;
 int cpp_token_len (int const*) ;

unsigned char *
cpp_token_as_text (cpp_reader *pfile, const cpp_token *token)
{
  unsigned int len = cpp_token_len (token) + 1;
  unsigned char *start = _cpp_unaligned_alloc (pfile, len), *end;

  end = cpp_spell_token (pfile, token, start, 0);
  end[0] = '\0';

  return start;
}
