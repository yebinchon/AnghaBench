
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int size; } ;


 int netlbl_unlhsh ;
 TYPE_1__* rcu_dereference (int ) ;

__attribute__((used)) static u32 netlbl_unlhsh_hash(int ifindex)
{



 return ifindex & (rcu_dereference(netlbl_unlhsh)->size - 1);
}
