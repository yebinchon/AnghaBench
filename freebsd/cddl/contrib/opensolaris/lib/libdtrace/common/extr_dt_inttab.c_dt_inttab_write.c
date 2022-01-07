
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_4__ {TYPE_2__* int_head; } ;
typedef TYPE_1__ dt_inttab_t ;
struct TYPE_5__ {int inh_value; struct TYPE_5__* inh_next; } ;
typedef TYPE_2__ dt_inthash_t ;



void
dt_inttab_write(const dt_inttab_t *ip, uint64_t *dst)
{
 const dt_inthash_t *hp;

 for (hp = ip->int_head; hp != ((void*)0); hp = hp->inh_next)
  *dst++ = hp->inh_value;
}
