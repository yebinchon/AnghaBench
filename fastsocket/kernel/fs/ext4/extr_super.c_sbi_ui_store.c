
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_sb_info {int dummy; } ;
struct ext4_attr {int offset; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 scalar_t__ parse_strtoul (char const*,int,unsigned long*) ;

__attribute__((used)) static ssize_t sbi_ui_store(struct ext4_attr *a,
       struct ext4_sb_info *sbi,
       const char *buf, size_t count)
{
 unsigned int *ui = (unsigned int *) (((char *) sbi) + a->offset);
 unsigned long t;

 if (parse_strtoul(buf, 0xffffffff, &t))
  return -EINVAL;
 *ui = t;
 return count;
}
