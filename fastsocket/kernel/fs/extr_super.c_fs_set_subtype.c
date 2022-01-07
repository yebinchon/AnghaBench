
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfsmount {TYPE_1__* mnt_sb; } ;
struct TYPE_2__ {int s_subtype; } ;


 int EINVAL ;
 int ENOMEM ;
 struct vfsmount* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int kstrdup (char const*,int ) ;
 int mntput (struct vfsmount*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static struct vfsmount *fs_set_subtype(struct vfsmount *mnt, const char *fstype)
{
 int err;
 const char *subtype = strchr(fstype, '.');
 if (subtype) {
  subtype++;
  err = -EINVAL;
  if (!subtype[0])
   goto err;
 } else
  subtype = "";

 mnt->mnt_sb->s_subtype = kstrdup(subtype, GFP_KERNEL);
 err = -ENOMEM;
 if (!mnt->mnt_sb->s_subtype)
  goto err;
 return mnt;

 err:
 mntput(mnt);
 return ERR_PTR(err);
}
