
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* nfs_client; } ;
struct idmap {int idmap_user_hash; } ;
typedef int __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;


 int EINVAL ;
 int nfs_idmap_id (struct idmap*,int *,char const*,size_t,int *) ;
 int nfs_idmap_lookup_id (char const*,size_t,char*,int *) ;
 scalar_t__ nfs_map_string_to_numeric (char const*,size_t,int *) ;

int nfs_map_name_to_uid(const struct nfs_server *server, const char *name, size_t namelen, __u32 *uid)
{
 struct idmap *idmap = server->nfs_client->cl_idmap;
 int ret = -EINVAL;

 if (nfs_map_string_to_numeric(name, namelen, uid))
  return 0;
 ret = nfs_idmap_lookup_id(name, namelen, "uid", uid);
 if (ret < 0)
  ret = nfs_idmap_id(idmap, &idmap->idmap_user_hash, name, namelen, uid);
 return ret;
}
