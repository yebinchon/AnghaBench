
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ip_set_id_t ;
struct TYPE_2__ {scalar_t__ ref; } ;


 int BUG_ON (int) ;
 TYPE_1__** ip_set_list ;
 int ip_set_ref_lock ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void
__ip_set_put(ip_set_id_t index)
{
 write_lock_bh(&ip_set_ref_lock);
 BUG_ON(ip_set_list[index]->ref == 0);
 ip_set_list[index]->ref--;
 write_unlock_bh(&ip_set_ref_lock);
}
