
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_name_seq {int dummy; } ;


 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int rsv_publ_ok ;
 int tipc_publish (int ,unsigned int,struct tipc_name_seq const*) ;

int tipc_nametbl_publish_rsv(u32 ref, unsigned int scope,
   struct tipc_name_seq const *seq)
{
 int res;

 atomic_inc(&rsv_publ_ok);
 res = tipc_publish(ref, scope, seq);
 atomic_dec(&rsv_publ_ok);
 return res;
}
