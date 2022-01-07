
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct port {int dummy; } ;


 scalar_t__ tipc_ref_deref (int ) ;

__attribute__((used)) static inline struct port* tipc_port_deref(u32 ref)
{
 return (struct port *)tipc_ref_deref(ref);
}
