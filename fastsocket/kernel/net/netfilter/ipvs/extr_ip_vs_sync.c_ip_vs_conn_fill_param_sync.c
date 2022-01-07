
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct TYPE_5__ {int vport; int vaddr; int cport; int caddr; int protocol; } ;
struct TYPE_4__ {int vport; int vaddr; int cport; int caddr; int protocol; } ;
union ip_vs_sync_conn {TYPE_2__ v4; TYPE_1__ v6; } ;
struct ip_vs_conn_param {char* pe_data; unsigned int pe_data_len; TYPE_3__* pe; } ;
typedef int __u8 ;
struct TYPE_6__ {scalar_t__ module; } ;


 int AF_INET6 ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int IP_VS_DBG (int,char*,char*) ;
 int IP_VS_ERR_RL (char*) ;
 int IP_VS_PENAME_MAXLEN ;
 TYPE_3__* __ip_vs_pe_getbyname (char*) ;
 int ip_vs_conn_fill_param (int,int ,union nf_inet_addr const*,int ,union nf_inet_addr const*,int ,struct ip_vs_conn_param*) ;
 char* kmalloc (unsigned int,int ) ;
 int memcpy (char*,int *,unsigned int) ;
 int module_put (scalar_t__) ;

__attribute__((used)) static inline int
ip_vs_conn_fill_param_sync(int af, union ip_vs_sync_conn *sc,
      struct ip_vs_conn_param *p,
      __u8 *pe_data, unsigned int pe_data_len,
      __u8 *pe_name, unsigned int pe_name_len)
{
  ip_vs_conn_fill_param(af, sc->v4.protocol,
          (const union nf_inet_addr *)&sc->v4.caddr,
          sc->v4.cport,
          (const union nf_inet_addr *)&sc->v4.vaddr,
          sc->v4.vport, p);

 if (pe_data_len) {
  if (pe_name_len) {
   char buff[IP_VS_PENAME_MAXLEN+1];

   memcpy(buff, pe_name, pe_name_len);
   buff[pe_name_len]=0;
   p->pe = __ip_vs_pe_getbyname(buff);
   if (!p->pe) {
    IP_VS_DBG(3, "BACKUP, no %s engine found/loaded\n", buff);
    return 1;
   }
  } else {
   IP_VS_ERR_RL("BACKUP, Invalid PE parameters\n");
   return 1;
  }

  p->pe_data = kmalloc(pe_data_len, GFP_ATOMIC);
  if (!p->pe_data) {
   if (p->pe->module)
    module_put(p->pe->module);
   return -ENOMEM;
  }
  memcpy(p->pe_data, pe_data, pe_data_len);
  p->pe_data_len = pe_data_len;
 }
 return 0;
}
