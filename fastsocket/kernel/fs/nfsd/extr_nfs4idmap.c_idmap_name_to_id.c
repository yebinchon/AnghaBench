
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int u32 ;
struct svc_rqst {int dummy; } ;
struct ent {int type; char* name; int h; int id; int authname; } ;


 int ENOENT ;
 int ESRCH ;
 int cache_put (int *,int *) ;
 int idmap_lookup (struct svc_rqst*,int ,struct ent*,int *,struct ent**) ;
 int memcpy (char*,char const*,int) ;
 int nametoid_cache ;
 int nametoid_lookup ;
 int rqst_authname (struct svc_rqst*) ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static int
idmap_name_to_id(struct svc_rqst *rqstp, int type, const char *name, u32 namelen,
  uid_t *id)
{
 struct ent *item, key = {
  .type = type,
 };
 int ret;

 if (namelen + 1 > sizeof(key.name))
  return -ESRCH;
 memcpy(key.name, name, namelen);
 key.name[namelen] = '\0';
 strlcpy(key.authname, rqst_authname(rqstp), sizeof(key.authname));
 ret = idmap_lookup(rqstp, nametoid_lookup, &key, &nametoid_cache, &item);
 if (ret == -ENOENT)
  ret = -ESRCH;
 if (ret)
  return ret;
 *id = item->id;
 cache_put(&item->h, &nametoid_cache);
 return 0;
}
