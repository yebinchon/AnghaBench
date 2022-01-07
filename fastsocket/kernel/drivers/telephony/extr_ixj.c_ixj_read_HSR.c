
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {void* high; void* low; } ;
struct TYPE_6__ {TYPE_1__ bytes; } ;
struct TYPE_7__ {scalar_t__ DSPbase; TYPE_2__ hsr; } ;
typedef TYPE_3__ IXJ ;


 void* inb_p (scalar_t__) ;

__attribute__((used)) static inline void ixj_read_HSR(IXJ *j)
{
 j->hsr.bytes.low = inb_p(j->DSPbase + 8);
 j->hsr.bytes.high = inb_p(j->DSPbase + 9);
}
