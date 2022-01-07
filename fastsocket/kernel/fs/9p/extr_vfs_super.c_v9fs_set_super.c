
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {void* s_fs_info; } ;


 int set_anon_super (struct super_block*,void*) ;

__attribute__((used)) static int v9fs_set_super(struct super_block *s, void *data)
{
 s->s_fs_info = data;
 return set_anon_super(s, data);
}
