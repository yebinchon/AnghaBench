
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ipcp_after_propagate () ;
 int ipcp_propagate_stage () ;

__attribute__((used)) static void
ipcp_iterate_stage (void)
{
  ipcp_propagate_stage ();
  if (ipcp_after_propagate ())


    ipcp_propagate_stage ();
}
