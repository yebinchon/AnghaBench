
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {void* uts_ns; } ;


 int get_uts_ns (void*) ;
 int put_uts_ns (void*) ;

__attribute__((used)) static int utsns_install(struct nsproxy *nsproxy, void *ns)
{
 get_uts_ns(ns);
 put_uts_ns(nsproxy->uts_ns);
 nsproxy->uts_ns = ns;
 return 0;
}
