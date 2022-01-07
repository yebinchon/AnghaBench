
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daio {int rscr; int rscl; } ;


 int rsc_uninit (int *) ;

__attribute__((used)) static int daio_rsc_uninit(struct daio *daio)
{
 rsc_uninit(&daio->rscl);
 rsc_uninit(&daio->rscr);

 return 0;
}
