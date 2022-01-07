
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_buffer_head {int dummy; } ;
struct ufs_sb_private_info {struct ufs_buffer_head s_ubh; } ;



__attribute__((used)) static inline struct ufs_buffer_head *USPI_UBH(struct ufs_sb_private_info *spi)
{
 return &spi->s_ubh;
}
