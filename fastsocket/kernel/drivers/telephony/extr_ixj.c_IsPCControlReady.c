
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ crr; } ;
struct TYPE_6__ {TYPE_1__ bits; int byte; } ;
struct TYPE_7__ {TYPE_2__ pccr1; scalar_t__ XILINXbase; } ;
typedef TYPE_3__ IXJ ;


 int inb_p (scalar_t__) ;

__attribute__((used)) static inline int IsPCControlReady(IXJ *j)
{
 j->pccr1.byte = inb_p(j->XILINXbase + 3);
 return j->pccr1.bits.crr ? 1 : 0;
}
