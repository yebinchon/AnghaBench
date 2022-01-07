
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int int_hdl; struct TYPE_5__* int_hash; struct TYPE_5__* inh_next; struct TYPE_5__* int_head; } ;
typedef TYPE_1__ dt_inttab_t ;
typedef TYPE_1__ dt_inthash_t ;


 int dt_free (int ,TYPE_1__*) ;

void
dt_inttab_destroy(dt_inttab_t *ip)
{
 dt_inthash_t *hp, *np;

 for (hp = ip->int_head; hp != ((void*)0); hp = np) {
  np = hp->inh_next;
  dt_free(ip->int_hdl, hp);
 }

 dt_free(ip->int_hdl, ip->int_hash);
 dt_free(ip->int_hdl, ip);
}
