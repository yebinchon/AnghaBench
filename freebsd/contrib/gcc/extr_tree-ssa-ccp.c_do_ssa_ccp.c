
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int execute_ssa_ccp (int) ;

__attribute__((used)) static unsigned int
do_ssa_ccp (void)
{
  execute_ssa_ccp (0);
  return 0;
}
