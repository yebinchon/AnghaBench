
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG () ;
 int xfs_emerg (int *,char*,char*,char*,int) ;

void
assfail(char *expr, char *file, int line)
{
 xfs_emerg(((void*)0), "Assertion failed: %s, file: %s, line: %d",
  expr, file, line);
 BUG();
}
