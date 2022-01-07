
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long smem_len; } ;
struct fb_info {char* screen_base; TYPE_1__ fix; } ;
typedef size_t ssize_t ;
typedef size_t loff_t ;


 int EFAULT ;
 size_t ENOSPC ;
 scalar_t__ copy_from_user16 (char*,char const*,size_t) ;

__attribute__((used)) static ssize_t
epson1355fb_write(struct fb_info *info, const char *buf,
    size_t count, loff_t * ppos)
{
 unsigned long p = *ppos;
 int err;


 if (p > info->fix.smem_len)
  return -ENOSPC;
 if (count >= info->fix.smem_len)
  count = info->fix.smem_len;
 err = 0;
 if (count + p > info->fix.smem_len) {
  count = info->fix.smem_len - p;
  err = -ENOSPC;
 }

 if (count) {
  char *base_addr;

  base_addr = info->screen_base;
  count -= copy_from_user16(base_addr + p, buf, count);
  *ppos += count;
  err = -EFAULT;
 }
 if (count)
  return count;
 return err;
}
