
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dfail (char*) ;
 scalar_t__ dtrace_aggregate_snap (int ) ;
 int dtrace_status (int ) ;
 int g_dtp ;
 int g_tracing ;

__attribute__((used)) static void
status_check(void)
{
 if (!g_tracing && dtrace_aggregate_snap(g_dtp) != 0)
  dfail("failed to snap aggregate");

 if (dtrace_status(g_dtp) == -1)
  dfail("dtrace_status()");
}
