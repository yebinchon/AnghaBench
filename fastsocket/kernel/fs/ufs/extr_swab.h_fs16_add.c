
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
typedef int __le16 ;
typedef int __fs16 ;
typedef int __be16 ;
struct TYPE_2__ {scalar_t__ s_bytesex; } ;


 scalar_t__ BYTESEX_LE ;
 TYPE_1__* UFS_SB (struct super_block*) ;
 int be16_add_cpu (int *,int) ;
 int le16_add_cpu (int *,int) ;

__attribute__((used)) static inline void
fs16_add(struct super_block *sbp, __fs16 *n, int d)
{
 if (UFS_SB(sbp)->s_bytesex == BYTESEX_LE)
  le16_add_cpu((__le16 *)n, d);
 else
  be16_add_cpu((__be16 *)n, d);
}
