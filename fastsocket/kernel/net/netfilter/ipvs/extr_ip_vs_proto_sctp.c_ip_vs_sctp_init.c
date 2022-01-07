
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_protocol {int timeout_table; } ;


 int IP_VS_INIT_HASH_TABLE (int ) ;
 int sctp_apps ;
 int sctp_timeouts ;

__attribute__((used)) static void ip_vs_sctp_init(struct ip_vs_protocol *pp)
{
 IP_VS_INIT_HASH_TABLE(sctp_apps);
 pp->timeout_table = sctp_timeouts;
}
