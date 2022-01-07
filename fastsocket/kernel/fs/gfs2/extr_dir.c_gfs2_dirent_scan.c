
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_dirent {int de_rec_len; } ;
typedef int (* gfs2_dscan_t ) (struct gfs2_dirent*,struct qstr const*,void*) ;


 int BUG_ON (int) ;
 int EIO ;
 struct gfs2_dirent* ERR_PTR (int) ;
 int GFS2_I (struct inode*) ;
 unsigned int be16_to_cpu (int ) ;
 scalar_t__ gfs2_check_dirent (struct gfs2_dirent*,unsigned int,unsigned int,unsigned int,int) ;
 int gfs2_consist_inode (int ) ;
 int gfs2_dirent_offset (void*) ;

__attribute__((used)) static struct gfs2_dirent *gfs2_dirent_scan(struct inode *inode, void *buf,
         unsigned int len, gfs2_dscan_t scan,
         const struct qstr *name,
         void *opaque)
{
 struct gfs2_dirent *dent, *prev;
 unsigned offset;
 unsigned size;
 int ret = 0;

 ret = gfs2_dirent_offset(buf);
 if (ret < 0)
  goto consist_inode;

 offset = ret;
 prev = ((void*)0);
 dent = buf + offset;
 size = be16_to_cpu(dent->de_rec_len);
 if (gfs2_check_dirent(dent, offset, size, len, 1))
  goto consist_inode;
 do {
  ret = scan(dent, name, opaque);
  if (ret)
   break;
  offset += size;
  if (offset == len)
   break;
  prev = dent;
  dent = buf + offset;
  size = be16_to_cpu(dent->de_rec_len);
  if (gfs2_check_dirent(dent, offset, size, len, 0))
   goto consist_inode;
 } while(1);

 switch(ret) {
 case 0:
  return ((void*)0);
 case 1:
  return dent;
 case 2:
  return prev ? prev : dent;
 default:
  BUG_ON(ret > 0);
  return ERR_PTR(ret);
 }

consist_inode:
 gfs2_consist_inode(GFS2_I(inode));
 return ERR_PTR(-EIO);
}
