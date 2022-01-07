
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint64_t ;
struct TYPE_5__ {int int_hashlen; TYPE_2__* int_tail; TYPE_2__* int_head; int int_nelems; TYPE_2__** int_hash; int int_index; int int_hdl; } ;
typedef TYPE_1__ dt_inttab_t ;
struct TYPE_6__ {int inh_value; int inh_flags; int inh_index; struct TYPE_6__* inh_next; struct TYPE_6__* inh_hash; } ;
typedef TYPE_2__ dt_inthash_t ;


 int DT_INT_SHARED ;
 TYPE_2__* dt_alloc (int ,int) ;

int
dt_inttab_insert(dt_inttab_t *ip, uint64_t value, uint_t flags)
{
 uint_t h = value & (ip->int_hashlen - 1);
 dt_inthash_t *hp;

 if (flags & DT_INT_SHARED) {
  for (hp = ip->int_hash[h]; hp != ((void*)0); hp = hp->inh_hash) {
   if (hp->inh_value == value && hp->inh_flags == flags)
    return (hp->inh_index);
  }
 }

 if ((hp = dt_alloc(ip->int_hdl, sizeof (dt_inthash_t))) == ((void*)0))
  return (-1);

 hp->inh_hash = ip->int_hash[h];
 hp->inh_next = ((void*)0);
 hp->inh_value = value;
 hp->inh_index = ip->int_index++;
 hp->inh_flags = flags;

 ip->int_hash[h] = hp;
 ip->int_nelems++;

 if (ip->int_head == ((void*)0))
  ip->int_head = hp;
 else
  ip->int_tail->inh_next = hp;

 ip->int_tail = hp;
 return (hp->inh_index);
}
