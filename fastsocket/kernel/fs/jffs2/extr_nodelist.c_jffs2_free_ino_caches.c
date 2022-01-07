
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jffs2_sb_info {struct jffs2_inode_cache** inocache_list; } ;
struct jffs2_inode_cache {struct jffs2_inode_cache* next; } ;


 int INOCACHE_HASHSIZE ;
 int jffs2_free_inode_cache (struct jffs2_inode_cache*) ;
 int jffs2_xattr_free_inode (struct jffs2_sb_info*,struct jffs2_inode_cache*) ;

void jffs2_free_ino_caches(struct jffs2_sb_info *c)
{
 int i;
 struct jffs2_inode_cache *this, *next;

 for (i=0; i<INOCACHE_HASHSIZE; i++) {
  this = c->inocache_list[i];
  while (this) {
   next = this->next;
   jffs2_xattr_free_inode(c, this);
   jffs2_free_inode_cache(this);
   this = next;
  }
  c->inocache_list[i] = ((void*)0);
 }
}
