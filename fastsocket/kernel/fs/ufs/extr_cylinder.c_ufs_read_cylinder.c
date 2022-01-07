
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ufs_sb_private_info {int s_cgsize; } ;
struct ufs_sb_info {unsigned int* s_cgno; TYPE_3__** s_ucg; struct ufs_cg_private_info** s_ucpi; struct ufs_sb_private_info* s_uspi; } ;
struct TYPE_6__ {int cg_nclusterblks; int cg_clusteroff; int cg_clustersumoff; } ;
struct TYPE_7__ {TYPE_1__ cg_44; } ;
struct ufs_cylinder_group {TYPE_2__ cg_u; int cg_nextfreeoff; int cg_freeoff; int cg_iusedoff; int cg_boff; int cg_btotoff; int cg_irotor; int cg_frotor; int cg_rotor; int cg_ndblk; int cg_niblk; int cg_ncyl; int cg_cgx; } ;
struct ufs_cg_private_info {void* c_nclusterblks; void* c_clusteroff; void* c_clustersumoff; void* c_nextfreeoff; void* c_freeoff; void* c_iusedoff; void* c_boff; void* c_btotoff; void* c_irotor; void* c_frotor; void* c_rotor; void* c_ndblk; void* c_niblk; void* c_ncyl; void* c_cgx; } ;
struct super_block {int s_blocksize_bits; } ;
struct TYPE_9__ {int count; scalar_t__ fragment; TYPE_3__** bh; } ;
struct TYPE_8__ {scalar_t__ b_data; } ;


 TYPE_5__* UCPI_UBH (struct ufs_cg_private_info*) ;
 int UFSD (char*,...) ;
 unsigned int UFS_CGNO_EMPTY ;
 struct ufs_sb_info* UFS_SB (struct super_block*) ;
 int brelse (TYPE_3__*) ;
 void* fs16_to_cpu (struct super_block*,int ) ;
 void* fs32_to_cpu (struct super_block*,int ) ;
 TYPE_3__* sb_bread (struct super_block*,scalar_t__) ;
 scalar_t__ ufs_cgcmin (unsigned int) ;
 int ufs_error (struct super_block*,char*,char*,unsigned int) ;

__attribute__((used)) static void ufs_read_cylinder (struct super_block * sb,
 unsigned cgno, unsigned bitmap_nr)
{
 struct ufs_sb_info * sbi = UFS_SB(sb);
 struct ufs_sb_private_info * uspi;
 struct ufs_cg_private_info * ucpi;
 struct ufs_cylinder_group * ucg;
 unsigned i, j;

 UFSD("ENTER, cgno %u, bitmap_nr %u\n", cgno, bitmap_nr);
 uspi = sbi->s_uspi;
 ucpi = sbi->s_ucpi[bitmap_nr];
 ucg = (struct ufs_cylinder_group *)sbi->s_ucg[cgno]->b_data;

 UCPI_UBH(ucpi)->fragment = ufs_cgcmin(cgno);
 UCPI_UBH(ucpi)->count = uspi->s_cgsize >> sb->s_blocksize_bits;



 UCPI_UBH(ucpi)->bh[0] = sbi->s_ucg[cgno];
 for (i = 1; i < UCPI_UBH(ucpi)->count; i++)
  if (!(UCPI_UBH(ucpi)->bh[i] = sb_bread(sb, UCPI_UBH(ucpi)->fragment + i)))
   goto failed;
 sbi->s_cgno[bitmap_nr] = cgno;

 ucpi->c_cgx = fs32_to_cpu(sb, ucg->cg_cgx);
 ucpi->c_ncyl = fs16_to_cpu(sb, ucg->cg_ncyl);
 ucpi->c_niblk = fs16_to_cpu(sb, ucg->cg_niblk);
 ucpi->c_ndblk = fs32_to_cpu(sb, ucg->cg_ndblk);
 ucpi->c_rotor = fs32_to_cpu(sb, ucg->cg_rotor);
 ucpi->c_frotor = fs32_to_cpu(sb, ucg->cg_frotor);
 ucpi->c_irotor = fs32_to_cpu(sb, ucg->cg_irotor);
 ucpi->c_btotoff = fs32_to_cpu(sb, ucg->cg_btotoff);
 ucpi->c_boff = fs32_to_cpu(sb, ucg->cg_boff);
 ucpi->c_iusedoff = fs32_to_cpu(sb, ucg->cg_iusedoff);
 ucpi->c_freeoff = fs32_to_cpu(sb, ucg->cg_freeoff);
 ucpi->c_nextfreeoff = fs32_to_cpu(sb, ucg->cg_nextfreeoff);
 ucpi->c_clustersumoff = fs32_to_cpu(sb, ucg->cg_u.cg_44.cg_clustersumoff);
 ucpi->c_clusteroff = fs32_to_cpu(sb, ucg->cg_u.cg_44.cg_clusteroff);
 ucpi->c_nclusterblks = fs32_to_cpu(sb, ucg->cg_u.cg_44.cg_nclusterblks);
 UFSD("EXIT\n");
 return;

failed:
 for (j = 1; j < i; j++)
  brelse (sbi->s_ucg[j]);
 sbi->s_cgno[bitmap_nr] = UFS_CGNO_EMPTY;
 ufs_error (sb, "ufs_read_cylinder", "can't read cylinder group block %u", cgno);
}
