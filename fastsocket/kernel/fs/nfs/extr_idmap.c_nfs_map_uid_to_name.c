
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_server {int caps; TYPE_1__* nfs_client; } ;
struct idmap {int idmap_user_hash; } ;
typedef int __u32 ;
struct TYPE_2__ {struct idmap* cl_idmap; } ;


 int EINVAL ;
 int NFS_CAP_UIDGID_NOMAP ;
 int nfs_idmap_lookup_name (int ,char*,char*,size_t) ;
 int nfs_idmap_name (struct idmap*,int *,int ,char*) ;
 int nfs_map_numeric_to_string (int ,char*,size_t) ;

int nfs_map_uid_to_name(const struct nfs_server *server, __u32 uid, char *buf, size_t buflen)
{
 struct idmap *idmap = server->nfs_client->cl_idmap;
 int ret = -EINVAL;

 if (!(server->caps & NFS_CAP_UIDGID_NOMAP)) {
  ret = nfs_idmap_lookup_name(uid, "user", buf, buflen);
  if (ret < 0)
   ret = nfs_idmap_name(idmap, &idmap->idmap_user_hash, uid, buf);
 }
 if (ret < 0)
  ret = nfs_map_numeric_to_string(uid, buf, buflen);
 return ret;
}
