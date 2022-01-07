
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int c_parse_backslash_baton ;
 int c_parse_backslash_func (int ,int,int*) ;
 int stub1 (int ,int,int*) ;

int
c_parse_backslash (int host_char, int *target_char)
{
  return (*c_parse_backslash_func) (c_parse_backslash_baton,
                                    host_char, target_char);
}
