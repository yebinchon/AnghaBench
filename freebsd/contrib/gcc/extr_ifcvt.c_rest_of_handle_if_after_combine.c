
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int if_convert (int) ;
 int no_new_pseudos ;

__attribute__((used)) static unsigned int
rest_of_handle_if_after_combine (void)
{
  no_new_pseudos = 0;
  if_convert (1);
  no_new_pseudos = 1;
  return 0;
}
