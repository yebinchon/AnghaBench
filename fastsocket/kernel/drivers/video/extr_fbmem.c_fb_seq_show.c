
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int id; } ;
struct fb_info {TYPE_1__ fix; int node; } ;
typedef int loff_t ;


 struct fb_info** registered_fb ;
 int seq_printf (struct seq_file*,char*,int ,int ) ;

__attribute__((used)) static int fb_seq_show(struct seq_file *m, void *v)
{
 int i = *(loff_t *)v;
 struct fb_info *fi = registered_fb[i];

 if (fi)
  seq_printf(m, "%d %s\n", fi->node, fi->fix.id);
 return 0;
}
