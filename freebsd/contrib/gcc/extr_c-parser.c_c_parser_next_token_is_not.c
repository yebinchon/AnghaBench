
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
typedef int c_parser ;


 int c_parser_next_token_is (int *,int) ;

__attribute__((used)) static inline bool
c_parser_next_token_is_not (c_parser *parser, enum cpp_ttype type)
{
  return !c_parser_next_token_is (parser, type);
}
