
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {TYPE_1__* nfs_client; } ;
struct idmap {int idmap_group_hash; } ;
typedef int __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;


 int EINVAL ;
 int nfs_idmap_id (struct idmap*,int *,char const*,size_t,int *) ;
 int nfs_idmap_lookup_id (char const*,size_t,char*,int *) ;
 scalar_t__ nfs_map_string_to_numeric (char const*,size_t,int *) ;

int nfs_map_group_to_gid(const struct nfs_server *server, const char *name, size_t namelen, __u32 *gid)
{
 struct idmap *idmap = server->nfs_client->cl_idmap;
 int ret = -EINVAL;

 if (nfs_map_string_to_numeric(name, namelen, gid))
  return 0;
 ret = nfs_idmap_lookup_id(name, namelen, "gid", gid);
 if (ret < 0)
  ret = nfs_idmap_id(idmap, &idmap->idmap_group_hash, name, namelen, gid);
 return ret;
}
