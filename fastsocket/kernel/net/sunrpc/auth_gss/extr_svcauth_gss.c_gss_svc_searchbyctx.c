
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdr_netobj {int len; int data; } ;
struct rsc {int h; int handle; } ;
typedef int rsci ;


 scalar_t__ cache_check (int *,int *,int *) ;
 scalar_t__ dup_to_netobj (int *,int ,int ) ;
 int memset (struct rsc*,int ,int) ;
 int rsc_cache ;
 int rsc_free (struct rsc*) ;
 struct rsc* rsc_lookup (struct rsc*) ;

__attribute__((used)) static struct rsc *
gss_svc_searchbyctx(struct xdr_netobj *handle)
{
 struct rsc rsci;
 struct rsc *found;

 memset(&rsci, 0, sizeof(rsci));
 if (dup_to_netobj(&rsci.handle, handle->data, handle->len))
  return ((void*)0);
 found = rsc_lookup(&rsci);
 rsc_free(&rsci);
 if (!found)
  return ((void*)0);
 if (cache_check(&rsc_cache, &found->h, ((void*)0)))
  return ((void*)0);
 return found;
}
