
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pxd_lock {int pxd; void* flag; } ;
struct maplock {int index; } ;
struct inode {int i_mode; scalar_t__ i_size; } ;
typedef int s64 ;
struct TYPE_5__ {int flag; } ;
struct TYPE_6__ {TYPE_1__ acl; TYPE_1__ ea; } ;


 int COMMIT_WMAP ;
 int DXD_EXTENT ;
 scalar_t__ IDATASIZE ;
 TYPE_4__* JFS_IP (struct inode*) ;
 int PXDaddress (int *,int ) ;
 int PXDlength (int *,int) ;

 int S_IFMT ;

 int addressDXD (TYPE_1__*) ;
 int invalidate_dxd_metapages (struct inode*,TYPE_1__) ;
 int jfs_info (char*,struct inode*) ;
 int lengthDXD (TYPE_1__*) ;
 void* mlckFREEPXD ;
 int txFreeMap (struct inode*,struct pxd_lock*,int *,int ) ;
 int xtTruncate (int ,struct inode*,int ,int ) ;

void jfs_free_zero_link(struct inode *ip)
{
 int type;

 jfs_info("jfs_free_zero_link: ip = 0x%p", ip);




 type = ip->i_mode & S_IFMT;

 switch (type) {
 case 128:
  break;
 case 129:

  if (ip->i_size < IDATASIZE)
   return;
  break;
 default:
  return;
 }




 if (JFS_IP(ip)->ea.flag & DXD_EXTENT) {
  s64 xaddr = addressDXD(&JFS_IP(ip)->ea);
  int xlen = lengthDXD(&JFS_IP(ip)->ea);
  struct maplock maplock;
  struct pxd_lock *pxdlock;


  invalidate_dxd_metapages(ip, JFS_IP(ip)->ea);


  maplock.index = 1;
  pxdlock = (struct pxd_lock *) & maplock;
  pxdlock->flag = mlckFREEPXD;
  PXDaddress(&pxdlock->pxd, xaddr);
  PXDlength(&pxdlock->pxd, xlen);
  txFreeMap(ip, pxdlock, ((void*)0), COMMIT_WMAP);
 }




 if (JFS_IP(ip)->acl.flag & DXD_EXTENT) {
  s64 xaddr = addressDXD(&JFS_IP(ip)->acl);
  int xlen = lengthDXD(&JFS_IP(ip)->acl);
  struct maplock maplock;
  struct pxd_lock *pxdlock;

  invalidate_dxd_metapages(ip, JFS_IP(ip)->acl);


  maplock.index = 1;
  pxdlock = (struct pxd_lock *) & maplock;
  pxdlock->flag = mlckFREEPXD;
  PXDaddress(&pxdlock->pxd, xaddr);
  PXDlength(&pxdlock->pxd, xlen);
  txFreeMap(ip, pxdlock, ((void*)0), COMMIT_WMAP);
 }






 if (ip->i_size)
  xtTruncate(0, ip, 0, COMMIT_WMAP);
}
