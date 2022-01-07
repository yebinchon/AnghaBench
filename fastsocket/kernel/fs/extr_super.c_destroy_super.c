
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct super_block* s_options; struct super_block* s_subtype; } ;


 int destroy_sb_writers (struct super_block*) ;
 int kfree (struct super_block*) ;
 int security_sb_free (struct super_block*) ;

__attribute__((used)) static inline void destroy_super(struct super_block *s)
{
 security_sb_free(s);
 destroy_sb_writers(s);
 kfree(s->s_subtype);
 kfree(s->s_options);
 kfree(s);
}
