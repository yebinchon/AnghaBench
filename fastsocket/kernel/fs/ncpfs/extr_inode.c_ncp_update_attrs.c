
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nw_info_struct {int attributes; int dataStreamSize; } ;
struct TYPE_3__ {int dir_mode; int file_mode; int flags; } ;
struct ncp_server {TYPE_1__ m; } ;
struct ncp_entry_info {struct nw_info_struct i; } ;
struct inode {int i_mode; int i_size; } ;
struct TYPE_4__ {int flags; } ;


 int NCPI_KLUDGE_SYMLINK ;
 int NCP_BLOCK_SIZE ;
 TYPE_2__* NCP_FINFO (struct inode*) ;
 int NCP_MAX_SYMLINK_SIZE ;
 int NCP_MOUNT_EXTRAS ;
 int NCP_MOUNT_SYMLINKS ;
 struct ncp_server* NCP_SERVER (struct inode*) ;
 int S_IFLNK ;
 int S_IFMT ;
 int S_IRUGO ;
 int S_IWUGO ;
 int S_IXUGO ;
 int aDIR ;

 int aRONLY ;
 int aSHARED ;

 int le32_to_cpu (int ) ;

__attribute__((used)) static void ncp_update_attrs(struct inode *inode, struct ncp_entry_info *nwinfo)
{
 struct nw_info_struct *nwi = &nwinfo->i;
 struct ncp_server *server = NCP_SERVER(inode);

 if (nwi->attributes & aDIR) {
  inode->i_mode = server->m.dir_mode;


  inode->i_size = NCP_BLOCK_SIZE;
 } else {
  inode->i_mode = server->m.file_mode;
  inode->i_size = le32_to_cpu(nwi->dataStreamSize);
 }
 if (nwi->attributes & aRONLY) inode->i_mode &= ~S_IWUGO;
}
