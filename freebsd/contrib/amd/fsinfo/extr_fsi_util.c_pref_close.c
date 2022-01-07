
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ fclose (int *) ;

int
pref_close(FILE *fp)
{
  return fclose(fp) == 0;
}
