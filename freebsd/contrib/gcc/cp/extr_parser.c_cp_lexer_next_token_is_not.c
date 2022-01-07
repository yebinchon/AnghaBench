
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef int cp_lexer ;


 int cp_lexer_next_token_is (int *,int) ;

__attribute__((used)) static inline bool
cp_lexer_next_token_is_not (cp_lexer* lexer, enum cpp_ttype type)
{
  return !cp_lexer_next_token_is (lexer, type);
}
