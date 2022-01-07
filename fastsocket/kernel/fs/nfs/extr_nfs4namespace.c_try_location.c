
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char vfsmount ;
struct sockaddr_storage {int dummy; } ;
struct nfs_clone_mount {char* mnt_path; char* hostname; int * addr; int addrlen; } ;
struct nfs4_string {unsigned int len; int data; } ;
struct nfs4_fs_location {unsigned int nservers; struct nfs4_string* servers; int rootpath; } ;


 int ENOENT ;
 int ENOMEM ;
 char* ERR_CAST (char*) ;
 char* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int IPV6_SCOPE_DELIMITER ;
 scalar_t__ IS_ERR (char*) ;
 int NFS_PORT ;
 int PAGE_SIZE ;
 int kfree (int *) ;
 int * kmalloc (size_t const,int ) ;
 scalar_t__ memchr (int ,int ,unsigned int) ;
 int memcpy (char*,int ,unsigned int) ;
 char* nfs4_pathname_string (int *,char*,int ) ;
 int nfs4_referral_fs_type ;
 int nfs_parse_server_name (int ,unsigned int,int *,size_t const) ;
 int rpc_set_port (int *,int ) ;
 int snprintf (char*,int ,char*,char*,char*) ;
 char* vfs_kern_mount (int *,int ,char*,struct nfs_clone_mount*) ;

__attribute__((used)) static struct vfsmount *try_location(struct nfs_clone_mount *mountdata,
         char *page, char *page2,
         const struct nfs4_fs_location *location)
{
 const size_t addr_bufsize = sizeof(struct sockaddr_storage);
 struct vfsmount *mnt = ERR_PTR(-ENOENT);
 char *mnt_path;
 unsigned int maxbuflen;
 unsigned int s;

 mnt_path = nfs4_pathname_string(&location->rootpath, page2, PAGE_SIZE);
 if (IS_ERR(mnt_path))
  return ERR_CAST(mnt_path);
 mountdata->mnt_path = mnt_path;
 maxbuflen = mnt_path - 1 - page2;

 mountdata->addr = kmalloc(addr_bufsize, GFP_KERNEL);
 if (mountdata->addr == ((void*)0))
  return ERR_PTR(-ENOMEM);

 for (s = 0; s < location->nservers; s++) {
  const struct nfs4_string *buf = &location->servers[s];

  if (buf->len <= 0 || buf->len >= maxbuflen)
   continue;

  if (memchr(buf->data, IPV6_SCOPE_DELIMITER, buf->len))
   continue;

  mountdata->addrlen = nfs_parse_server_name(buf->data, buf->len,
    mountdata->addr, addr_bufsize);
  if (mountdata->addrlen == 0)
   continue;

  rpc_set_port(mountdata->addr, NFS_PORT);

  memcpy(page2, buf->data, buf->len);
  page2[buf->len] = '\0';
  mountdata->hostname = page2;

  snprintf(page, PAGE_SIZE, "%s:%s",
    mountdata->hostname,
    mountdata->mnt_path);

  mnt = vfs_kern_mount(&nfs4_referral_fs_type, 0, page, mountdata);
  if (!IS_ERR(mnt))
   break;
 }
 kfree(mountdata->addr);
 return mnt;
}
