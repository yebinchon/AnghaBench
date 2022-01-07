
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int osb_dx_seed; } ;
struct ocfs2_dx_hinfo {void* minor_hash; void* major_hash; } ;
struct inode {int i_sb; } ;
typedef int buf ;
typedef void* __u32 ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 int TEA_transform (void**,void**) ;
 int memcpy (void**,int ,int) ;
 int str2hashbuf (char const*,int,void**,int) ;
 int strncmp (char*,char const*,int) ;

__attribute__((used)) static void ocfs2_dx_dir_name_hash(struct inode *dir, const char *name, int len,
       struct ocfs2_dx_hinfo *hinfo)
{
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);
 const char *p;
 __u32 in[8], buf[4];





 if ((len == 1 && !strncmp(".", name, 1)) ||
     (len == 2 && !strncmp("..", name, 2))) {
  buf[0] = buf[1] = 0;
  goto out;
 }
 memcpy(buf, osb->osb_dx_seed, sizeof(buf));

 p = name;
 while (len > 0) {
  str2hashbuf(p, len, in, 4);
  TEA_transform(buf, in);
  len -= 16;
  p += 16;
 }

out:
 hinfo->major_hash = buf[0];
 hinfo->minor_hash = buf[1];
}
