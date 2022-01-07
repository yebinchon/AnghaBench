
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int * s_fs_info; } ;
struct TYPE_2__ {int * vc_sb; } ;


 TYPE_1__* coda_vcp (struct super_block*) ;
 int printk (char*) ;

__attribute__((used)) static void coda_put_super(struct super_block *sb)
{
 coda_vcp(sb)->vc_sb = ((void*)0);
 sb->s_fs_info = ((void*)0);

 printk("Coda: Bye bye.\n");
}
