
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct svc_rqst {int dummy; } ;
struct ent {int id; int type; int h; int name; int authname; } ;


 int BUG_ON (int) ;
 int ENOENT ;
 int IDMAP_NAMESZ ;
 int cache_put (int *,int *) ;
 int idmap_lookup (struct svc_rqst*,int ,struct ent*,int *,struct ent**) ;
 int idtoname_cache ;
 int idtoname_lookup ;
 int memcpy (char*,int ,int) ;
 int rqst_authname (struct svc_rqst*) ;
 int sprintf (char*,char*,int) ;
 int strlcpy (int ,int ,int) ;
 int strlen (int ) ;

__attribute__((used)) static int
idmap_id_to_name(struct svc_rqst *rqstp, int type, uid_t id, char *name)
{
 struct ent *item, key = {
  .id = id,
  .type = type,
 };
 int ret;

 strlcpy(key.authname, rqst_authname(rqstp), sizeof(key.authname));
 ret = idmap_lookup(rqstp, idtoname_lookup, &key, &idtoname_cache, &item);
 if (ret == -ENOENT)
  return sprintf(name, "%u", id);
 if (ret)
  return ret;
 ret = strlen(item->name);
 BUG_ON(ret > IDMAP_NAMESZ);
 memcpy(name, item->name, ret);
 cache_put(&item->h, &idtoname_cache);
 return ret;
}
