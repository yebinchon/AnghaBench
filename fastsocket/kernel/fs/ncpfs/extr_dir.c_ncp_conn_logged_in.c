
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {struct dentry* s_root; } ;
struct TYPE_3__ {int mounted_vol; } ;
struct ncp_server {TYPE_1__ m; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef int __u8 ;
typedef int __u32 ;
typedef int __name ;
typedef void* __le32 ;
struct TYPE_4__ {void* DosDirNum; void* dirEntNum; int volNumber; } ;


 int DPRINTK (char*) ;
 int ENOENT ;
 TYPE_2__* NCP_FINFO (struct inode*) ;
 int NCP_MAXPATHLEN ;
 struct ncp_server* NCP_SBP (struct super_block*) ;
 int PPRINTK (char*,int ) ;
 scalar_t__ ncp_get_volume_root (struct ncp_server*,int *,int *,void**,void**) ;
 int ncp_io2vol (struct ncp_server*,int *,int*,int ,int ,int) ;
 scalar_t__ ncp_single_volume (struct ncp_server*) ;
 int strlen (int ) ;

int ncp_conn_logged_in(struct super_block *sb)
{
 struct ncp_server* server = NCP_SBP(sb);
 int result;

 if (ncp_single_volume(server)) {
  int len;
  struct dentry* dent;
  __u32 volNumber;
  __le32 dirEntNum;
  __le32 DosDirNum;
  __u8 __name[NCP_MAXPATHLEN + 1];

  len = sizeof(__name);
  result = ncp_io2vol(server, __name, &len, server->m.mounted_vol,
        strlen(server->m.mounted_vol), 1);
  if (result)
   goto out;
  result = -ENOENT;
  if (ncp_get_volume_root(server, __name, &volNumber, &dirEntNum, &DosDirNum)) {
   PPRINTK("ncp_conn_logged_in: %s not found\n",
    server->m.mounted_vol);
   goto out;
  }
  dent = sb->s_root;
  if (dent) {
   struct inode* ino = dent->d_inode;
   if (ino) {
    NCP_FINFO(ino)->volNumber = volNumber;
    NCP_FINFO(ino)->dirEntNum = dirEntNum;
    NCP_FINFO(ino)->DosDirNum = DosDirNum;
   } else {
    DPRINTK("ncpfs: sb->s_root->d_inode == NULL!\n");
   }
  } else {
   DPRINTK("ncpfs: sb->s_root == NULL!\n");
  }
 }
 result = 0;

out:
 return result;
}
