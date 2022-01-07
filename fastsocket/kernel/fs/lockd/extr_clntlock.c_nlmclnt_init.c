
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nlmclnt_initdata {int nfs_version; int noresvport; int hostname; int protocol; int addrlen; int address; } ;
struct nlm_host {int dummy; } ;


 int ENOLCK ;
 struct nlm_host* ERR_PTR (int) ;
 int lockd_down () ;
 int lockd_up () ;
 struct nlm_host* nlmclnt_lookup_host (int ,int ,int ,int,int ,int ) ;

struct nlm_host *nlmclnt_init(const struct nlmclnt_initdata *nlm_init)
{
 struct nlm_host *host;
 u32 nlm_version = (nlm_init->nfs_version == 2) ? 1 : 4;
 int status;

 status = lockd_up();
 if (status < 0)
  return ERR_PTR(status);

 host = nlmclnt_lookup_host(nlm_init->address, nlm_init->addrlen,
       nlm_init->protocol, nlm_version,
       nlm_init->hostname, nlm_init->noresvport);
 if (host == ((void*)0)) {
  lockd_down();
  return ERR_PTR(-ENOLCK);
 }

 return host;
}
