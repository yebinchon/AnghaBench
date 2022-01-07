
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_umount; } ;


 int put_super (struct super_block*) ;
 int up_read (int *) ;

void drop_super(struct super_block *sb)
{
 up_read(&sb->s_umount);
 put_super(sb);
}
