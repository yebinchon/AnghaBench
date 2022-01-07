
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISSPACE (unsigned char const) ;
 int check_source (int,int ) ;
 char const* clean_text_limit ;

__attribute__((used)) static const char *
forward_to_next_token_char (const char *ptr)
{
  for (++ptr; ISSPACE ((const unsigned char)*ptr);
       check_source (++ptr < clean_text_limit, 0))
    continue;
  return ptr;
}
