
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int l; } ;


 unsigned int CT_LOCKARRAY_MASK ;
 TYPE_1__* __ip_vs_conntbl_lock_array ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void ct_write_unlock_bh(unsigned key)
{
 write_unlock_bh(&__ip_vs_conntbl_lock_array[key&CT_LOCKARRAY_MASK].l);
}
