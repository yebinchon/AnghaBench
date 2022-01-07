
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_sb_private_info {unsigned int s_ncg; } ;
struct ufs_sb_info {unsigned int* s_cgno; unsigned int s_cg_loaded; struct ufs_cg_private_info** s_ucpi; struct ufs_sb_private_info* s_uspi; } ;
struct ufs_cg_private_info {int dummy; } ;
struct super_block {int dummy; } ;


 int UFSD (char*,...) ;
 unsigned int UFS_CGNO_EMPTY ;
 int UFS_MAX_GROUP_LOADED ;
 struct ufs_sb_info* UFS_SB (struct super_block*) ;
 int ufs_panic (struct super_block*,char*,char*) ;
 int ufs_put_cylinder (struct super_block*,int) ;
 int ufs_read_cylinder (struct super_block*,unsigned int,unsigned int) ;

struct ufs_cg_private_info * ufs_load_cylinder (
 struct super_block * sb, unsigned cgno)
{
 struct ufs_sb_info * sbi = UFS_SB(sb);
 struct ufs_sb_private_info * uspi;
 struct ufs_cg_private_info * ucpi;
 unsigned cg, i, j;

 UFSD("ENTER, cgno %u\n", cgno);

 uspi = sbi->s_uspi;
 if (cgno >= uspi->s_ncg) {
  ufs_panic (sb, "ufs_load_cylinder", "internal error, high number of cg");
  return ((void*)0);
 }



 if (sbi->s_cgno[0] == cgno) {
  UFSD("EXIT\n");
  return sbi->s_ucpi[0];
 }



 if (uspi->s_ncg <= UFS_MAX_GROUP_LOADED) {
  if (sbi->s_cgno[cgno] != UFS_CGNO_EMPTY) {
   if (sbi->s_cgno[cgno] != cgno) {
    ufs_panic (sb, "ufs_load_cylinder", "internal error, wrong number of cg in cache");
    UFSD("EXIT (FAILED)\n");
    return ((void*)0);
   }
   else {
    UFSD("EXIT\n");
    return sbi->s_ucpi[cgno];
   }
  } else {
   ufs_read_cylinder (sb, cgno, cgno);
   UFSD("EXIT\n");
   return sbi->s_ucpi[cgno];
  }
 }




 for (i = 0; i < sbi->s_cg_loaded && sbi->s_cgno[i] != cgno; i++);
 if (i < sbi->s_cg_loaded && sbi->s_cgno[i] == cgno) {
  cg = sbi->s_cgno[i];
  ucpi = sbi->s_ucpi[i];
  for (j = i; j > 0; j--) {
   sbi->s_cgno[j] = sbi->s_cgno[j-1];
   sbi->s_ucpi[j] = sbi->s_ucpi[j-1];
  }
  sbi->s_cgno[0] = cg;
  sbi->s_ucpi[0] = ucpi;




 } else {
  if (sbi->s_cg_loaded < UFS_MAX_GROUP_LOADED)
   sbi->s_cg_loaded++;
  else
   ufs_put_cylinder (sb, UFS_MAX_GROUP_LOADED-1);
  ucpi = sbi->s_ucpi[sbi->s_cg_loaded - 1];
  for (j = sbi->s_cg_loaded - 1; j > 0; j--) {
   sbi->s_cgno[j] = sbi->s_cgno[j-1];
   sbi->s_ucpi[j] = sbi->s_ucpi[j-1];
  }
  sbi->s_ucpi[0] = ucpi;
  ufs_read_cylinder (sb, cgno, 0);
 }
 UFSD("EXIT\n");
 return sbi->s_ucpi[0];
}
