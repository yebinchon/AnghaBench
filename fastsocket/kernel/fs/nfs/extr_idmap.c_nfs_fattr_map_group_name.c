
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_server {int dummy; } ;
struct nfs_fattr {int valid; int gid; struct nfs4_string* group_name; } ;
struct nfs4_string {int len; int data; } ;
typedef int __u32 ;


 int NFS_ATTR_FATTR_GROUP ;
 int NFS_ATTR_FATTR_GROUP_NAME ;
 scalar_t__ nfs_map_group_to_gid (struct nfs_server*,int ,int ,int *) ;

__attribute__((used)) static bool nfs_fattr_map_group_name(struct nfs_server *server, struct nfs_fattr *fattr)
{
 struct nfs4_string *group = fattr->group_name;
 __u32 gid;

 if (!(fattr->valid & NFS_ATTR_FATTR_GROUP_NAME))
  return 0;
 if (nfs_map_group_to_gid(server, group->data, group->len, &gid) == 0) {
  fattr->gid = gid;
  fattr->valid |= NFS_ATTR_FATTR_GROUP;
 }
 return 1;
}
