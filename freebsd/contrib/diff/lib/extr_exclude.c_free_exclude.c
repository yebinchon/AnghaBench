
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exclude {struct exclude* exclude; } ;


 int free (struct exclude*) ;

void
free_exclude (struct exclude *ex)
{
  free (ex->exclude);
  free (ex);
}
