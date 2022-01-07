
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct seq_file {int dummy; } ;
struct nfs_server {int * mountd_port; int * mountd_version; int mountd_address; } ;




 int nfs_show_mountd_netid (struct seq_file*,struct nfs_server*,int) ;
 int seq_printf (struct seq_file*,char*,...) ;

__attribute__((used)) static void nfs_show_mountd_options(struct seq_file *m, struct nfs_server *nfss,
        int showdefaults)
{
 struct sockaddr *sap = (struct sockaddr *)&nfss->mountd_address;

 switch (sap->sa_family) {
 case 129: {
  struct sockaddr_in *sin = (struct sockaddr_in *)sap;
  seq_printf(m, ",mountaddr=%pI4", &sin->sin_addr.s_addr);
  break;
 }
 case 128: {
  struct sockaddr_in6 *sin6 = (struct sockaddr_in6 *)sap;
  seq_printf(m, ",mountaddr=%pI6", &sin6->sin6_addr);
  break;
 }
 default:
  if (showdefaults)
   seq_printf(m, ",mountaddr=unspecified");
 }

 if (nfss->mountd_version || showdefaults)
  seq_printf(m, ",mountvers=%u", nfss->mountd_version);
 if (nfss->mountd_port || showdefaults)
  seq_printf(m, ",mountport=%u", nfss->mountd_port);

 nfs_show_mountd_netid(m, nfss, showdefaults);
}
