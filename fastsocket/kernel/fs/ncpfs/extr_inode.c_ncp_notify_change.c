
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int umode_t ;
struct nw_modify_dos_info {int attributes; int lastAccessDate; int modifyDate; int modifyTime; int creationDate; int creationTime; } ;
struct TYPE_6__ {scalar_t__ uid; scalar_t__ gid; int dir_mode; int flags; int file_mode; } ;
struct ncp_server {TYPE_1__ m; } ;
struct inode {int i_mode; } ;
struct TYPE_9__ {int tv_sec; } ;
struct TYPE_8__ {int tv_sec; } ;
struct TYPE_7__ {int tv_sec; } ;
struct iattr {int ia_valid; scalar_t__ ia_uid; scalar_t__ ia_gid; int ia_mode; TYPE_4__ ia_atime; TYPE_3__ ia_mtime; TYPE_2__ ia_ctime; int ia_size; } ;
struct dentry {struct inode* d_inode; } ;
typedef int info ;
typedef int __le32 ;
typedef int __le16 ;
struct TYPE_10__ {int nwattr; int file_handle; int dirEntNum; int volNumber; } ;


 int ATTR_ATIME ;
 int ATTR_CTIME ;
 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_MTIME ;
 int ATTR_SIZE ;
 int ATTR_UID ;
 int DM_ATTRIBUTES ;
 int DM_CREATE_DATE ;
 int DM_CREATE_TIME ;
 int DM_LAST_ACCESS_DATE ;
 int DM_MODIFY_DATE ;
 int DM_MODIFY_TIME ;
 int DPRINTK (char*,int ) ;
 int EACCES ;
 int EIO ;
 int EPERM ;
 TYPE_5__* NCP_FINFO (struct inode*) ;
 int NCP_MOUNT_EXTRAS ;
 struct ncp_server* NCP_SERVER (struct inode*) ;
 int O_WRONLY ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IRUGO ;
 int S_IRWXUGO ;
 scalar_t__ S_ISDIR (int ) ;
 int S_IWUGO ;
 int S_IXUGO ;
 int aDELETEINHIBIT ;
 int aRENAMEINHIBIT ;
 int aRONLY ;
 int aSHARED ;
 int aSYSTEM ;
 int inode_change_ok (struct inode*,struct iattr*) ;
 int inode_setattr (struct inode*,struct iattr*) ;
 int lock_kernel () ;
 int memset (struct nw_modify_dos_info*,int ,int) ;
 int ncp_age_dentry (struct ncp_server*,struct dentry*) ;
 int ncp_conn_valid (struct ncp_server*) ;
 int ncp_date_unix2dos (int ,int *,int *) ;
 int ncp_inode_close (struct inode*) ;
 scalar_t__ ncp_is_nfs_extras (struct ncp_server*,int ) ;
 int ncp_make_closed (struct inode*) ;
 int ncp_make_open (struct inode*,int ) ;
 int ncp_modify_file_or_subdir_dos_info (struct ncp_server*,struct inode*,int,struct nw_modify_dos_info*) ;
 int ncp_modify_nfs_info (struct ncp_server*,int ,int ,int,int ) ;
 int ncp_write_kernel (struct ncp_server*,int ,int ,int ,char*,int*) ;
 int unlock_kernel () ;

int ncp_notify_change(struct dentry *dentry, struct iattr *attr)
{
 struct inode *inode = dentry->d_inode;
 int result = 0;
 __le32 info_mask;
 struct nw_modify_dos_info info;
 struct ncp_server *server;

 result = -EIO;

 lock_kernel();

 server = NCP_SERVER(inode);
 if ((!server) || !ncp_conn_valid(server))
  goto out;


 ncp_age_dentry(server, dentry);

 result = inode_change_ok(inode, attr);
 if (result < 0)
  goto out;

 result = -EPERM;
 if (((attr->ia_valid & ATTR_UID) &&
      (attr->ia_uid != server->m.uid)))
  goto out;

 if (((attr->ia_valid & ATTR_GID) &&
      (attr->ia_gid != server->m.gid)))
  goto out;

 if (((attr->ia_valid & ATTR_MODE) &&
      (attr->ia_mode &
       ~(S_IFREG | S_IFDIR | S_IRWXUGO))))
  goto out;

 info_mask = 0;
 memset(&info, 0, sizeof(info));


        if ((attr->ia_valid & ATTR_MODE) != 0)
        {
  umode_t newmode = attr->ia_mode;

  info_mask |= DM_ATTRIBUTES;

                if (S_ISDIR(inode->i_mode)) {
                 newmode &= server->m.dir_mode;
  } else {
    newmode &= server->m.file_mode;
                }
                if (newmode & S_IWUGO)
                 info.attributes &= ~(aRONLY|aRENAMEINHIBIT|aDELETEINHIBIT);
                else
   info.attributes |= (aRONLY|aRENAMEINHIBIT|aDELETEINHIBIT);
        }




 if ((attr->ia_valid & ATTR_SIZE) != 0) {
  int written;

  DPRINTK("ncpfs: trying to change size to %ld\n",
   attr->ia_size);

  if ((result = ncp_make_open(inode, O_WRONLY)) < 0) {
   result = -EACCES;
   goto out;
  }
  ncp_write_kernel(NCP_SERVER(inode), NCP_FINFO(inode)->file_handle,
     attr->ia_size, 0, "", &written);



  ncp_inode_close(inode);
  result = ncp_make_closed(inode);
  if (result)
   goto out;
  {
   struct iattr tmpattr;

   tmpattr.ia_valid = ATTR_SIZE;
   tmpattr.ia_size = attr->ia_size;

   result = inode_setattr(inode, &tmpattr);
   if (result)
    goto out;
  }
 }
 if ((attr->ia_valid & ATTR_CTIME) != 0) {
  info_mask |= (DM_CREATE_TIME | DM_CREATE_DATE);
  ncp_date_unix2dos(attr->ia_ctime.tv_sec,
        &info.creationTime, &info.creationDate);
 }
 if ((attr->ia_valid & ATTR_MTIME) != 0) {
  info_mask |= (DM_MODIFY_TIME | DM_MODIFY_DATE);
  ncp_date_unix2dos(attr->ia_mtime.tv_sec,
      &info.modifyTime, &info.modifyDate);
 }
 if ((attr->ia_valid & ATTR_ATIME) != 0) {
  __le16 dummy;
  info_mask |= (DM_LAST_ACCESS_DATE);
  ncp_date_unix2dos(attr->ia_atime.tv_sec,
      &dummy, &info.lastAccessDate);
 }
 if (info_mask != 0) {
  result = ncp_modify_file_or_subdir_dos_info(NCP_SERVER(inode),
          inode, info_mask, &info);
  if (result != 0) {
   result = -EACCES;

   if (info_mask == (DM_CREATE_TIME | DM_CREATE_DATE)) {





    result = 0;
   } else
    goto out;
  }




 }
 if (!result)
  result = inode_setattr(inode, attr);
out:
 unlock_kernel();
 return result;
}
