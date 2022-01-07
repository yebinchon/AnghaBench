
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int desc; } ;
typedef TYPE_1__ br_hash_class ;
struct TYPE_6__ {TYPE_1__* hclass; scalar_t__ name; } ;


 int BR_HASHDESC_ID_MASK ;
 int BR_HASHDESC_ID_OFF ;
 TYPE_1__ const br_md5sha1_vtable ;
 TYPE_2__* hash_functions ;

const br_hash_class *
get_hash_impl(int hash_id)
{
 size_t u;

 if (hash_id == 0) {
  return &br_md5sha1_vtable;
 }
 for (u = 0; hash_functions[u].name; u ++) {
  const br_hash_class *hc;
  int id;

  hc = hash_functions[u].hclass;
  id = (hc->desc >> BR_HASHDESC_ID_OFF) & BR_HASHDESC_ID_MASK;
  if (id == hash_id) {
   return hc;
  }
 }
 return ((void*)0);
}
