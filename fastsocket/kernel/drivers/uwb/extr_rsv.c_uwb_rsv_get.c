
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {int kref; } ;


 int kref_get (int *) ;

void uwb_rsv_get(struct uwb_rsv *rsv)
{
 kref_get(&rsv->kref);
}
