
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct superblock_security_struct {char flags; } ;


 char SE_MNTMASK ;
 int SE_SBINITIALIZED ;

__attribute__((used)) static int bad_option(struct superblock_security_struct *sbsec, char flag,
        u32 old_sid, u32 new_sid)
{
 char mnt_flags = sbsec->flags & SE_MNTMASK;


 if (sbsec->flags & SE_SBINITIALIZED)
  if (!(sbsec->flags & flag) ||
      (old_sid != new_sid))
   return 1;




 if (!(sbsec->flags & SE_SBINITIALIZED))
  if (mnt_flags & flag)
   return 1;
 return 0;
}
