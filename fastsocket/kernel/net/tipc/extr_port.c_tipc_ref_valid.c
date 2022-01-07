
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int tipc_ref_deref (int ) ;

int tipc_ref_valid(u32 ref)
{

 return !!tipc_ref_deref(ref);
}
