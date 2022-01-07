
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_pal {int node; } ;


 int INIT_LIST_HEAD (int *) ;

void uwb_pal_init(struct uwb_pal *pal)
{
 INIT_LIST_HEAD(&pal->node);
}
