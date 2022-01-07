
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execute_pre (int) ;

__attribute__((used)) static unsigned int
do_pre (void)
{
  execute_pre (0);
  return 0;
}
