
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {scalar_t__ s_bytesex; } ;
typedef int __le16 ;
typedef int __fs16 ;
typedef int __be16 ;


 scalar_t__ BYTESEX_BE ;
 int be16_add_cpu (int *,int) ;
 int le16_add_cpu (int *,int) ;

__attribute__((used)) static inline __fs16 fs16_add(struct sysv_sb_info *sbi, __fs16 *n, int d)
{
 if (sbi->s_bytesex != BYTESEX_BE)
  le16_add_cpu((__le16 *)n, d);
 else
  be16_add_cpu((__be16 *)n, d);
 return *n;
}
