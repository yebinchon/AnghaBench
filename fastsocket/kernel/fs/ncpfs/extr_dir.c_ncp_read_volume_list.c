
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ncp_volume_info {unsigned long volume_name; } ;
struct ncp_server {int dummy; } ;
struct TYPE_4__ {int volNumber; } ;
struct ncp_entry_info {TYPE_2__ i; int volume; } ;
struct ncp_cache_control {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_3__ {struct dentry* dentry; } ;
struct file {scalar_t__ f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef int filldir_t ;


 int DPRINTK (char*,unsigned long) ;
 int NCP_NUMBER_OF_VOLUMES ;
 struct ncp_server* NCP_SERVER (struct inode*) ;
 int ncp_fill_cache (struct file*,void*,int ,struct ncp_cache_control*,struct ncp_entry_info*) ;
 scalar_t__ ncp_get_volume_info_with_number (struct ncp_server*,int,struct ncp_volume_info*) ;
 scalar_t__ ncp_lookup_volume (struct ncp_server*,unsigned long,TYPE_2__*) ;
 int strlen (unsigned long) ;

__attribute__((used)) static void
ncp_read_volume_list(struct file *filp, void *dirent, filldir_t filldir,
   struct ncp_cache_control *ctl)
{
 struct dentry *dentry = filp->f_path.dentry;
 struct inode *inode = dentry->d_inode;
 struct ncp_server *server = NCP_SERVER(inode);
 struct ncp_volume_info info;
 struct ncp_entry_info entry;
 int i;

 DPRINTK("ncp_read_volume_list: pos=%ld\n",
   (unsigned long) filp->f_pos);

 for (i = 0; i < NCP_NUMBER_OF_VOLUMES; i++) {

  if (ncp_get_volume_info_with_number(server, i, &info) != 0)
   return;
  if (!strlen(info.volume_name))
   continue;

  DPRINTK("ncp_read_volume_list: found vol: %s\n",
   info.volume_name);

  if (ncp_lookup_volume(server, info.volume_name,
     &entry.i)) {
   DPRINTK("ncpfs: could not lookup vol %s\n",
    info.volume_name);
   continue;
  }
  entry.volume = entry.i.volNumber;
  if (!ncp_fill_cache(filp, dirent, filldir, ctl, &entry))
   return;
 }
}
