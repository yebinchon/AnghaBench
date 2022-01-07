
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct fb_cursor {int dummy; } ;



__attribute__((used)) static int no_cursor(struct fb_info *info, struct fb_cursor *cursor)
{
 return 0;
}
