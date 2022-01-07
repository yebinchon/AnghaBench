
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int svc_client ;
struct svc_expkey {int ek_fsidtype; int h; int ek_fsid; int * ek_client; } ;
struct cache_req {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 struct svc_expkey* ERR_PTR (int) ;
 int cache_check (int *,int *,struct cache_req*) ;
 int key_len (int) ;
 int memcpy (int ,int *,int ) ;
 int svc_expkey_cache ;
 struct svc_expkey* svc_expkey_lookup (struct svc_expkey*) ;

__attribute__((used)) static struct svc_expkey *
exp_find_key(svc_client *clp, int fsid_type, u32 *fsidv, struct cache_req *reqp)
{
 struct svc_expkey key, *ek;
 int err;

 if (!clp)
  return ERR_PTR(-ENOENT);

 key.ek_client = clp;
 key.ek_fsidtype = fsid_type;
 memcpy(key.ek_fsid, fsidv, key_len(fsid_type));

 ek = svc_expkey_lookup(&key);
 if (ek == ((void*)0))
  return ERR_PTR(-ENOMEM);
 err = cache_check(&svc_expkey_cache, &ek->h, reqp);
 if (err)
  return ERR_PTR(err);
 return ek;
}
