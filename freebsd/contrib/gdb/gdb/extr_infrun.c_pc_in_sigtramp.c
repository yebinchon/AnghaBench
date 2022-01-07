
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int PC_IN_SIGTRAMP (int ,char*) ;
 int find_pc_partial_function (int ,char**,int *,int *) ;

__attribute__((used)) static int
pc_in_sigtramp (CORE_ADDR pc)
{
  char *name;
  find_pc_partial_function (pc, &name, ((void*)0), ((void*)0));
  return PC_IN_SIGTRAMP (pc, name);
}
