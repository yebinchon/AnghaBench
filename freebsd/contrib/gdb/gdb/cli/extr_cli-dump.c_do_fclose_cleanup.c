
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (void*) ;

__attribute__((used)) static void
do_fclose_cleanup (void *arg)
{
  FILE *file = arg;
  fclose (arg);
}
