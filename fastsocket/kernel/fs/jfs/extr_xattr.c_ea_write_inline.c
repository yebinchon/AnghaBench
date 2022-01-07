
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flag; } ;
struct jfs_inode_info {int mode2; TYPE_1__ ea; int i_inline_ea; } ;
struct jfs_ea_list {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_8__ {int flag; } ;
typedef TYPE_2__ dxd_t ;


 int DXD_INLINE ;
 int DXDaddress (TYPE_2__*,int ) ;
 int DXDlength (TYPE_2__*,int ) ;
 int DXDsize (TYPE_2__*,int) ;
 int EPERM ;
 int INLINEEA ;
 struct jfs_inode_info* JFS_IP (struct inode*) ;
 int assert (int) ;
 int memcpy (int ,struct jfs_ea_list*,int) ;

__attribute__((used)) static int ea_write_inline(struct inode *ip, struct jfs_ea_list *ealist,
      int size, dxd_t * ea)
{
 struct jfs_inode_info *ji = JFS_IP(ip);





 if (ealist && size > sizeof (struct jfs_ea_list)) {
  assert(size <= sizeof (ji->i_inline_ea));





  if (!(ji->mode2 & INLINEEA) && !(ji->ea.flag & DXD_INLINE))
   return -EPERM;

  DXDsize(ea, size);
  DXDlength(ea, 0);
  DXDaddress(ea, 0);
  memcpy(ji->i_inline_ea, ealist, size);
  ea->flag = DXD_INLINE;
  ji->mode2 &= ~INLINEEA;
 } else {
  ea->flag = 0;
  DXDsize(ea, 0);
  DXDlength(ea, 0);
  DXDaddress(ea, 0);


  if (ji->ea.flag & DXD_INLINE)
   ji->mode2 |= INLINEEA;
 }

 return 0;
}
