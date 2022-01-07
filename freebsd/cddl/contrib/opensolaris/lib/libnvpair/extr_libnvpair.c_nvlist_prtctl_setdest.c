
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* nvlist_prtctl_t ;
struct TYPE_3__ {int * nvprt_fp; } ;
typedef int FILE ;



void
nvlist_prtctl_setdest(nvlist_prtctl_t pctl, FILE *fp)
{
 pctl->nvprt_fp = fp;
}
