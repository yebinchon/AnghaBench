
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_sc_info {int dummy; } ;
struct nilfs_sb_info {struct nilfs_sc_info* s_sc_info; } ;



__attribute__((used)) static inline struct nilfs_sc_info *NILFS_SC(struct nilfs_sb_info *sbi)
{
 return sbi->s_sc_info;
}
