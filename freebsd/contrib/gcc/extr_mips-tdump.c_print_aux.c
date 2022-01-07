
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int tq5; int tq4; int tq3; int tq2; int tq1; int tq0; int continued; int fBitfield; int bt; } ;
struct TYPE_5__ {scalar_t__ index; scalar_t__ rfd; } ;
struct TYPE_7__ {TYPE_2__ ti; TYPE_1__ rndx; scalar_t__ isym; } ;
typedef TYPE_3__ AUXU ;


 int printf (char*,char*,int,long,long,long,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
print_aux (AUXU u, int auxi, int used)
{
  printf ("\t%s#%-5d %11ld, [%4ld/%7ld], [%2d %1d:%1d %1x:%1x:%1x:%1x:%1x:%1x]\n",
   (used) ? "  " : "* ",
   auxi,
   (long) u.isym,
   (long) u.rndx.rfd,
   (long) u.rndx.index,
   u.ti.bt,
   u.ti.fBitfield,
   u.ti.continued,
   u.ti.tq0,
   u.ti.tq1,
   u.ti.tq2,
   u.ti.tq3,
   u.ti.tq4,
   u.ti.tq5);
}
