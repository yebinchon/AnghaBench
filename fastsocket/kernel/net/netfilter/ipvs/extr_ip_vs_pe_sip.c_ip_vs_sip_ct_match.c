
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_conn_param {scalar_t__ af; scalar_t__ protocol; scalar_t__ vport; scalar_t__ pe_data_len; int vaddr; int pe_data; int caddr; } ;
struct ip_vs_conn {scalar_t__ af; scalar_t__ vport; int flags; scalar_t__ protocol; scalar_t__ pe_data_len; scalar_t__ pe_data; int vaddr; int caddr; } ;


 scalar_t__ AF_UNSPEC ;
 scalar_t__ IPPROTO_IP ;
 int IP_VS_CONN_F_TEMPLATE ;
 int IP_VS_DBG_ADDR (scalar_t__,int ) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ,int ,char*) ;
 int IP_VS_DEBUG_CALLID (int ,scalar_t__) ;
 scalar_t__ ip_vs_addr_equal (scalar_t__,int ,int *) ;
 int ip_vs_proto_name (scalar_t__) ;
 int memcmp (scalar_t__,int ,scalar_t__) ;
 int ntohs (scalar_t__) ;

__attribute__((used)) static bool ip_vs_sip_ct_match(const struct ip_vs_conn_param *p,
      struct ip_vs_conn *ct)

{
 bool ret = 0;

 if (ct->af == p->af &&
     ip_vs_addr_equal(p->af, p->caddr, &ct->caddr) &&


     ip_vs_addr_equal(p->protocol == IPPROTO_IP ? AF_UNSPEC : p->af,
        p->vaddr, &ct->vaddr) &&
     ct->vport == p->vport &&
     ct->flags & IP_VS_CONN_F_TEMPLATE &&
     ct->protocol == p->protocol &&
     ct->pe_data && ct->pe_data_len == p->pe_data_len &&
     !memcmp(ct->pe_data, p->pe_data, p->pe_data_len))
  ret = 1;

 IP_VS_DBG_BUF(9, "SIP template match %s %s->%s:%d %s\n",
        ip_vs_proto_name(p->protocol),
        IP_VS_DEBUG_CALLID(p->pe_data, p->pe_data_len),
        IP_VS_DBG_ADDR(p->af, p->vaddr), ntohs(p->vport),
        ret ? "hit" : "not hit");

 return ret;
}
