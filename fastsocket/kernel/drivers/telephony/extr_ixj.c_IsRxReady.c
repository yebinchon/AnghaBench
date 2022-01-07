
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rxrdy; } ;
struct TYPE_7__ {TYPE_1__ bits; } ;
struct TYPE_8__ {TYPE_2__ hsr; int rxreadycheck; } ;
typedef TYPE_3__ IXJ ;


 int ixj_perfmon (int ) ;
 int ixj_read_HSR (TYPE_3__*) ;

__attribute__((used)) static inline int IsRxReady(IXJ *j)
{
 ixj_read_HSR(j);
 ixj_perfmon(j->rxreadycheck);
 return j->hsr.bits.rxrdy ? 1 : 0;
}
