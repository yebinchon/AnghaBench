
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int detect_sysv (struct sysv_sb_info*,struct buffer_head*) ;

__attribute__((used)) static int detect_sysv_odd(struct sysv_sb_info *sbi, struct buffer_head *bh)
{
 int size = detect_sysv(sbi, bh);

 return size>2 ? 0 : size;
}
