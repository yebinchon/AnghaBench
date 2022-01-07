
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fb_info {int dummy; } ;


 int ENOIOCTLCMD ;

__attribute__((used)) static int aafb_ioctl(struct fb_info *info, u32 cmd, unsigned long arg)
{

 return -ENOIOCTLCMD;
}
