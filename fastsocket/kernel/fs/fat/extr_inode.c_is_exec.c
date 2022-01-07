
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncmp (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int is_exec(unsigned char *extension)
{
 unsigned char *exe_extensions = "EXECOMBAT", *walk;

 for (walk = exe_extensions; *walk; walk += 3)
  if (!strncmp(extension, walk, 3))
   return 1;
 return 0;
}
