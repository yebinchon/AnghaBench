
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_vol {scalar_t__ seal; int local_lease; int nocase; int retry; scalar_t__ nodfs; int local_nls; int UNC; scalar_t__ password; } ;
struct cifs_tcon {scalar_t__ seal; int Flags; int tcon_list; int local_lease; int nocase; int retry; int password; struct cifs_ses* ses; } ;
struct cifs_ses {int tcon_list; } ;


 int CIFSTCon (int,struct cifs_ses*,int ,struct cifs_tcon*,int ) ;
 int ENODEV ;
 int ENOMEM ;
 struct cifs_tcon* ERR_PTR (int) ;
 int FreeXid (int) ;
 int GFP_KERNEL ;
 int GetXid () ;
 int SMB_SHARE_IS_IN_DFS ;
 int cERROR (int,char*) ;
 int cFYI (int,char*,...) ;
 struct cifs_tcon* cifs_find_tcon (struct cifs_ses*,int ) ;
 int cifs_fscache_get_super_cookie (struct cifs_tcon*) ;
 int cifs_put_smb_ses (struct cifs_ses*) ;
 int cifs_tcp_ses_lock ;
 int kstrdup (scalar_t__,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int * strchr (int ,char) ;
 struct cifs_tcon* tconInfoAlloc () ;
 int tconInfoFree (struct cifs_tcon*) ;

__attribute__((used)) static struct cifs_tcon *
cifs_get_tcon(struct cifs_ses *ses, struct smb_vol *volume_info)
{
 int rc, xid;
 struct cifs_tcon *tcon;

 tcon = cifs_find_tcon(ses, volume_info->UNC);
 if (tcon) {
  cFYI(1, "Found match on UNC path");

  cifs_put_smb_ses(ses);
  if (tcon->seal != volume_info->seal)
   cERROR(1, "transport encryption setting "
       "conflicts with existing tid");
  return tcon;
 }

 tcon = tconInfoAlloc();
 if (tcon == ((void*)0)) {
  rc = -ENOMEM;
  goto out_fail;
 }

 tcon->ses = ses;
 if (volume_info->password) {
  tcon->password = kstrdup(volume_info->password, GFP_KERNEL);
  if (!tcon->password) {
   rc = -ENOMEM;
   goto out_fail;
  }
 }

 if (strchr(volume_info->UNC + 3, '\\') == ((void*)0)
     && strchr(volume_info->UNC + 3, '/') == ((void*)0)) {
  cERROR(1, "Missing share name");
  rc = -ENODEV;
  goto out_fail;
 }




 xid = GetXid();
 rc = CIFSTCon(xid, ses, volume_info->UNC, tcon, volume_info->local_nls);
 FreeXid(xid);
 cFYI(1, "CIFS Tcon rc = %d", rc);
 if (rc)
  goto out_fail;

 if (volume_info->nodfs) {
  tcon->Flags &= ~SMB_SHARE_IS_IN_DFS;
  cFYI(1, "DFS disabled (%d)", tcon->Flags);
 }
 tcon->seal = volume_info->seal;




 tcon->retry = volume_info->retry;
 tcon->nocase = volume_info->nocase;
 tcon->local_lease = volume_info->local_lease;

 spin_lock(&cifs_tcp_ses_lock);
 list_add(&tcon->tcon_list, &ses->tcon_list);
 spin_unlock(&cifs_tcp_ses_lock);

 cifs_fscache_get_super_cookie(tcon);

 return tcon;

out_fail:
 tconInfoFree(tcon);
 return ERR_PTR(rc);
}
