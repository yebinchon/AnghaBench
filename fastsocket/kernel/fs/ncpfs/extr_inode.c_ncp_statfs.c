
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {struct dentry* s_root; } ;
struct ncp_volume_info {int sectors_per_block; int available_dir_entries; int total_dir_entries; int free_blocks; int total_blocks; } ;
struct TYPE_2__ {int * mounted_vol; } ;
struct ncp_server {TYPE_1__ m; } ;
struct ncp_inode_info {int DosDirNum; int volNumber; } ;
struct kstatfs {int f_bsize; int f_namelen; int f_bavail; int f_bfree; int f_blocks; void* f_type; int f_ffree; int f_files; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; struct super_block* d_sb; } ;
typedef int __u8 ;


 int NCP_BLOCK_SIZE ;
 struct ncp_inode_info* NCP_FINFO (struct inode*) ;
 struct ncp_server* NCP_SBP (struct super_block*) ;
 void* NCP_SUPER_MAGIC ;
 int ncp_dirhandle_alloc (struct ncp_server*,int ,int ,int *) ;
 int ncp_dirhandle_free (struct ncp_server*,int ) ;
 int ncp_get_directory_info (struct ncp_server*,int ,struct ncp_volume_info*) ;

__attribute__((used)) static int ncp_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct dentry* d;
 struct inode* i;
 struct ncp_inode_info* ni;
 struct ncp_server* s;
 struct ncp_volume_info vi;
 struct super_block *sb = dentry->d_sb;
 int err;
 __u8 dh;

 d = sb->s_root;
 if (!d) {
  goto dflt;
 }
 i = d->d_inode;
 if (!i) {
  goto dflt;
 }
 ni = NCP_FINFO(i);
 if (!ni) {
  goto dflt;
 }
 s = NCP_SBP(sb);
 if (!s) {
  goto dflt;
 }
 if (!s->m.mounted_vol[0]) {
  goto dflt;
 }

 err = ncp_dirhandle_alloc(s, ni->volNumber, ni->DosDirNum, &dh);
 if (err) {
  goto dflt;
 }
 err = ncp_get_directory_info(s, dh, &vi);
 ncp_dirhandle_free(s, dh);
 if (err) {
  goto dflt;
 }
 buf->f_type = NCP_SUPER_MAGIC;
 buf->f_bsize = vi.sectors_per_block * 512;
 buf->f_blocks = vi.total_blocks;
 buf->f_bfree = vi.free_blocks;
 buf->f_bavail = vi.free_blocks;
 buf->f_files = vi.total_dir_entries;
 buf->f_ffree = vi.available_dir_entries;
 buf->f_namelen = 12;
 return 0;







dflt:;
 buf->f_type = NCP_SUPER_MAGIC;
 buf->f_bsize = NCP_BLOCK_SIZE;
 buf->f_blocks = 0;
 buf->f_bfree = 0;
 buf->f_bavail = 0;
 buf->f_namelen = 12;
 return 0;
}
