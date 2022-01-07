
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* o2net_reconnect_delay_ms; void* o2net_keepalive_delay_ms; void* o2net_idle_timeout_ms; void* o2hb_heartbeat_timeout_ms; } ;


 int O2HB_MAX_WRITE_TIMEOUT_MS ;
 void* cpu_to_be32 (int ) ;
 TYPE_1__* o2net_hand ;
 int o2net_idle_timeout () ;
 int o2net_keepalive_delay () ;
 int o2net_reconnect_delay () ;

__attribute__((used)) static void o2net_initialize_handshake(void)
{
 o2net_hand->o2hb_heartbeat_timeout_ms = cpu_to_be32(
  O2HB_MAX_WRITE_TIMEOUT_MS);
 o2net_hand->o2net_idle_timeout_ms = cpu_to_be32(o2net_idle_timeout());
 o2net_hand->o2net_keepalive_delay_ms = cpu_to_be32(
  o2net_keepalive_delay());
 o2net_hand->o2net_reconnect_delay_ms = cpu_to_be32(
  o2net_reconnect_delay());
}
