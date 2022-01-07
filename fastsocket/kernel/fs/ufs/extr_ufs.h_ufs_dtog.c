
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ufs_sb_private_info {int s_fpg; } ;


 int do_div (int ,int ) ;

__attribute__((used)) static inline u64 ufs_dtog(struct ufs_sb_private_info * uspi, u64 b)
{
 do_div(b, uspi->s_fpg);
 return b;
}
