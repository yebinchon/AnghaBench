
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ip_vs_conn_param {int pe_data_len; int pe_data; } ;


 int jhash (int ,int ,int ) ;

__attribute__((used)) static u32 ip_vs_sip_hashkey_raw(const struct ip_vs_conn_param *p,
     u32 initval, bool inverse)
{
 return jhash(p->pe_data, p->pe_data_len, initval);
}
