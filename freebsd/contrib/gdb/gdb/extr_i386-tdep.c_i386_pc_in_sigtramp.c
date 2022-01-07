
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
i386_pc_in_sigtramp (CORE_ADDR pc, char *name)
{
  return (name && strcmp ("_sigtramp", name) == 0);
}
