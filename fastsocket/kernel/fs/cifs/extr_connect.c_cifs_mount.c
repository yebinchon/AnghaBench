
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcon_link {int tl_flags; int tl_time; struct cifs_tcon* tl_tcon; int tl_uid; } ;
struct smb_vol {int dummy; } ;
struct TYPE_6__ {int Capability; } ;
struct cifs_tcon {int linux_uid; int ipc; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_2__* ses; } ;
struct cifs_ses {int linux_uid; int ipc; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_2__* ses; } ;
struct cifs_sb_info {int mnt_cifs_flags; int prune_tlinks; int tlink_tree_lock; int tlink_tree; struct tcon_link* master_tlink; int prepath; int rsize; int wsize; } ;
struct TCP_Server_Info {int linux_uid; int ipc; scalar_t__ unix_ext; TYPE_3__ fsUnixInfo; TYPE_2__* ses; } ;
struct TYPE_5__ {int capabilities; TYPE_1__* server; } ;
struct TYPE_4__ {scalar_t__ tcpStatus; } ;


 int CAP_UNIX ;
 int CIFSSMBQFSAttributeInfo (int,struct cifs_tcon*) ;
 int CIFSSMBQFSDeviceInfo (int,struct cifs_tcon*) ;
 int CIFS_DIR_SEP (struct cifs_sb_info*) ;
 int CIFS_MOUNT_POSIX_PATHS ;
 int CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP ;
 scalar_t__ CifsNeedReconnect ;
 int EACCES ;
 int ELOOP ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int EREMOTE ;
 int FreeXid (int) ;
 int GFP_KERNEL ;
 int GetXid () ;
 scalar_t__ IS_ERR (struct cifs_tcon*) ;
 int MAX_NESTED_LINKS ;
 int PTR_ERR (struct cifs_tcon*) ;
 int TCON_LINK_IN_TREE ;
 int TCON_LINK_MASTER ;
 int TLINK_IDLE_EXPIRE ;
 char* cifs_build_path_to_root (struct cifs_sb_info*,struct cifs_tcon*) ;
 struct cifs_tcon* cifs_get_smb_ses (struct cifs_tcon*,struct smb_vol*) ;
 struct cifs_tcon* cifs_get_tcon (struct cifs_tcon*,struct smb_vol*) ;
 struct cifs_tcon* cifs_get_tcp_session (struct smb_vol*) ;
 int cifs_negotiate_rsize (struct cifs_tcon*,struct smb_vol*) ;
 int cifs_negotiate_wsize (struct cifs_tcon*,struct smb_vol*) ;
 int cifs_put_smb_ses (struct cifs_tcon*) ;
 int cifs_put_tcon (struct cifs_tcon*) ;
 int cifs_put_tcp_session (struct cifs_tcon*) ;
 int cifsiod_workqueue ;
 int convert_delimiter (int ,int ) ;
 int expand_dfs_referral (int,struct cifs_tcon*,struct smb_vol*,struct cifs_sb_info*,int) ;
 int is_path_accessible (int,struct cifs_tcon*,struct cifs_sb_info*,char*) ;
 int jiffies ;
 int kfree (char*) ;
 struct tcon_link* kzalloc (int,int ) ;
 int le64_to_cpu (int ) ;
 int queue_delayed_work (int ,int *,int ) ;
 int reset_cifs_unix_caps (int,struct cifs_tcon*,struct cifs_sb_info*,struct smb_vol*) ;
 int set_bit (int ,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tlink_rb_insert (int *,struct tcon_link*) ;

int
cifs_mount(struct cifs_sb_info *cifs_sb, struct smb_vol *volume_info)
{
 int rc;
 int xid;
 struct cifs_ses *pSesInfo;
 struct cifs_tcon *tcon;
 struct TCP_Server_Info *srvTcp;
 char *full_path;
 struct tcon_link *tlink;
 rc = 0;
 tcon = ((void*)0);
 pSesInfo = ((void*)0);
 srvTcp = ((void*)0);
 full_path = ((void*)0);
 tlink = ((void*)0);

 xid = GetXid();


 srvTcp = cifs_get_tcp_session(volume_info);
 if (IS_ERR(srvTcp)) {
  rc = PTR_ERR(srvTcp);
  goto out;
 }


 pSesInfo = cifs_get_smb_ses(srvTcp, volume_info);
 if (IS_ERR(pSesInfo)) {
  rc = PTR_ERR(pSesInfo);
  pSesInfo = ((void*)0);
  goto mount_fail_check;
 }


 tcon = cifs_get_tcon(pSesInfo, volume_info);
 if (IS_ERR(tcon)) {
  rc = PTR_ERR(tcon);
  tcon = ((void*)0);
  goto remote_path_check;
 }


 if (tcon->ses->capabilities & CAP_UNIX) {


  reset_cifs_unix_caps(xid, tcon, cifs_sb, volume_info);
  if ((tcon->ses->server->tcpStatus == CifsNeedReconnect) &&
      (le64_to_cpu(tcon->fsUnixInfo.Capability) &
       CIFS_UNIX_TRANSPORT_ENCRYPTION_MANDATORY_CAP)) {
   rc = -EACCES;
   goto mount_fail_check;
  }
 } else
  tcon->unix_ext = 0;


 if (!tcon->ipc) {
  CIFSSMBQFSDeviceInfo(xid, tcon);
  CIFSSMBQFSAttributeInfo(xid, tcon);
 }


 if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_POSIX_PATHS) == 0)
  convert_delimiter(cifs_sb->prepath, CIFS_DIR_SEP(cifs_sb));

 cifs_sb->wsize = cifs_negotiate_wsize(tcon, volume_info);
 cifs_sb->rsize = cifs_negotiate_rsize(tcon, volume_info);

remote_path_check:
 if (!rc && tcon) {

  full_path = cifs_build_path_to_root(cifs_sb, tcon);
  if (full_path == ((void*)0)) {
   rc = -ENOMEM;
   goto mount_fail_check;
  }
  rc = is_path_accessible(xid, tcon, cifs_sb, full_path);
  if (rc != 0 && rc != -EREMOTE) {
   kfree(full_path);
   goto mount_fail_check;
  }
  kfree(full_path);
 }


 if (rc == -EREMOTE) {
  rc = -EOPNOTSUPP;

 }

 if (rc)
  goto mount_fail_check;


 tlink = kzalloc(sizeof *tlink, GFP_KERNEL);
 if (tlink == ((void*)0)) {
  rc = -ENOMEM;
  goto mount_fail_check;
 }

 tlink->tl_uid = pSesInfo->linux_uid;
 tlink->tl_tcon = tcon;
 tlink->tl_time = jiffies;
 set_bit(TCON_LINK_MASTER, &tlink->tl_flags);
 set_bit(TCON_LINK_IN_TREE, &tlink->tl_flags);

 cifs_sb->master_tlink = tlink;
 spin_lock(&cifs_sb->tlink_tree_lock);
 tlink_rb_insert(&cifs_sb->tlink_tree, tlink);
 spin_unlock(&cifs_sb->tlink_tree_lock);

 queue_delayed_work(cifsiod_workqueue, &cifs_sb->prune_tlinks,
    TLINK_IDLE_EXPIRE);

mount_fail_check:

 if (rc) {


  if (tcon)
   cifs_put_tcon(tcon);
  else if (pSesInfo)
   cifs_put_smb_ses(pSesInfo);
  else
   cifs_put_tcp_session(srvTcp);
 }

out:
 FreeXid(xid);
 return rc;
}
