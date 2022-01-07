
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_port {int dummy; } ;


 scalar_t__ tipc_ref_deref (int const) ;

struct tipc_port *tipc_get_port(const u32 ref)
{
 return (struct tipc_port *)tipc_ref_deref(ref);
}
