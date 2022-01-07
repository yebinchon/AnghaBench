
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stub1 (int ,int,int*) ;
 int target_char_to_host_baton ;
 int target_char_to_host_func (int ,int,int*) ;

int
target_char_to_host (int target_char, int *host_char)
{
  return ((*target_char_to_host_func)
          (target_char_to_host_baton, target_char, host_char));
}
