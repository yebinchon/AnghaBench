
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int dummy; } ;
struct ext4_attr {int offset; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,unsigned int) ;

__attribute__((used)) static ssize_t sbi_ui_show(struct ext4_attr *a,
      struct ext4_sb_info *sbi, char *buf)
{
 unsigned int *ui = (unsigned int *) (((char *) sbi) + a->offset);

 return snprintf(buf, PAGE_SIZE, "%u\n", *ui);
}
