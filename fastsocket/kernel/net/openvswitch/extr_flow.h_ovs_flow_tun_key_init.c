
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ovs_key_ipv4_tunnel {int tun_flags; int ipv4_ttl; int ipv4_tos; int ipv4_dst; int ipv4_src; int tun_id; } ;
struct iphdr {int ttl; int tos; int daddr; int saddr; } ;
typedef int __be64 ;
typedef int __be16 ;


 int OVS_TUNNEL_KEY_SIZE ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static inline void ovs_flow_tun_key_init(struct ovs_key_ipv4_tunnel *tun_key,
      const struct iphdr *iph, __be64 tun_id,
      __be16 tun_flags)
{
 tun_key->tun_id = tun_id;
 tun_key->ipv4_src = iph->saddr;
 tun_key->ipv4_dst = iph->daddr;
 tun_key->ipv4_tos = iph->tos;
 tun_key->ipv4_ttl = iph->ttl;
 tun_key->tun_flags = tun_flags;


 memset((unsigned char *) tun_key + OVS_TUNNEL_KEY_SIZE, 0,
        sizeof(*tun_key) - OVS_TUNNEL_KEY_SIZE);
}
