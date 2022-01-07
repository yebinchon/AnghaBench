
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 int close (int) ;
 int free (struct pid*) ;

__attribute__((used)) static void
pdes_error(int *pdes, struct pid *cur)
{
 free(cur);
 (void)close(pdes[0]);
 (void)close(pdes[1]);
}
