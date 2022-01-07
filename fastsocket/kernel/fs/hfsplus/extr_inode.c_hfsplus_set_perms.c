
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_flags; int i_gid; int i_uid; int i_mode; } ;
struct hfsplus_perm {void* dev; void* group; void* owner; int mode; int userflags; int rootflags; } ;
struct TYPE_2__ {int dev; int userflags; } ;


 int HFSPLUS_FLG_APPEND ;
 int HFSPLUS_FLG_IMMUTABLE ;
 TYPE_1__ HFSPLUS_I (struct inode*) ;
 int S_APPEND ;
 int S_IMMUTABLE ;
 int cpu_to_be16 (int ) ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static void hfsplus_set_perms(struct inode *inode, struct hfsplus_perm *perms)
{
 if (inode->i_flags & S_IMMUTABLE)
  perms->rootflags |= HFSPLUS_FLG_IMMUTABLE;
 else
  perms->rootflags &= ~HFSPLUS_FLG_IMMUTABLE;
 if (inode->i_flags & S_APPEND)
  perms->rootflags |= HFSPLUS_FLG_APPEND;
 else
  perms->rootflags &= ~HFSPLUS_FLG_APPEND;
 perms->userflags = HFSPLUS_I(inode).userflags;
 perms->mode = cpu_to_be16(inode->i_mode);
 perms->owner = cpu_to_be32(inode->i_uid);
 perms->group = cpu_to_be32(inode->i_gid);
 perms->dev = cpu_to_be32(HFSPLUS_I(inode).dev);
}
