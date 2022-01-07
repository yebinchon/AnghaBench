
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __be32 ;


 int FATTR4_WORD0_FS_LOCATIONS ;
 int FATTR4_WORD0_RDATTR_ERROR ;
 int NFSERR_MOVED ;
 int WORD0_ABSENT_FS_ATTRS ;
 int WORD1_ABSENT_FS_ATTRS ;
 int nfserr_moved ;

__attribute__((used)) static __be32 fattr_handle_absent_fs(u32 *bmval0, u32 *bmval1, u32 *rdattr_err)
{

 if (*bmval0 & ~WORD0_ABSENT_FS_ATTRS ||
     *bmval1 & ~WORD1_ABSENT_FS_ATTRS) {
  if (*bmval0 & FATTR4_WORD0_RDATTR_ERROR ||
             *bmval0 & FATTR4_WORD0_FS_LOCATIONS)
   *rdattr_err = NFSERR_MOVED;
  else
   return nfserr_moved;
 }
 *bmval0 &= WORD0_ABSENT_FS_ATTRS;
 *bmval1 &= WORD1_ABSENT_FS_ATTRS;
 return 0;
}
