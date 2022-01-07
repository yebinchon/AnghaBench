
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c_target_char_has_backslash_escape_baton ;
 char const* c_target_char_has_backslash_escape_func (int ,int) ;
 char const* stub1 (int ,int) ;

const char *
c_target_char_has_backslash_escape (int target_char)
{
  return ((*c_target_char_has_backslash_escape_func)
          (c_target_char_has_backslash_escape_baton, target_char));
}
