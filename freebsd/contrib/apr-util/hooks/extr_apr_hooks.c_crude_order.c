
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nOrder; } ;
typedef TYPE_1__ TSortData ;



__attribute__((used)) static int crude_order(const void *a_,const void *b_)
{
    const TSortData *a=a_;
    const TSortData *b=b_;

    return a->nOrder-b->nOrder;
}
