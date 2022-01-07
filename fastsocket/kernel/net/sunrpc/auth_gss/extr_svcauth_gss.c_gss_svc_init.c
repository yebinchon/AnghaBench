
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RPC_AUTH_GSS ;
 int cache_register (int *) ;
 int cache_unregister (int *) ;
 int rsc_cache ;
 int rsi_cache ;
 int svc_auth_register (int ,int *) ;
 int svc_auth_unregister (int ) ;
 int svcauthops_gss ;

int
gss_svc_init(void)
{
 int rv = svc_auth_register(RPC_AUTH_GSS, &svcauthops_gss);
 if (rv)
  return rv;
 rv = cache_register(&rsc_cache);
 if (rv)
  goto out1;
 rv = cache_register(&rsi_cache);
 if (rv)
  goto out2;
 return 0;
out2:
 cache_unregister(&rsc_cache);
out1:
 svc_auth_unregister(RPC_AUTH_GSS);
 return rv;
}
