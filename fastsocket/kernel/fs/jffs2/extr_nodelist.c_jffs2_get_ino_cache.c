
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct jffs2_sb_info {struct jffs2_inode_cache** inocache_list; } ;
struct jffs2_inode_cache {size_t ino; struct jffs2_inode_cache* next; } ;


 size_t INOCACHE_HASHSIZE ;

struct jffs2_inode_cache *jffs2_get_ino_cache(struct jffs2_sb_info *c, uint32_t ino)
{
 struct jffs2_inode_cache *ret;

 ret = c->inocache_list[ino % INOCACHE_HASHSIZE];
 while (ret && ret->ino < ino) {
  ret = ret->next;
 }

 if (ret && ret->ino != ino)
  ret = ((void*)0);

 return ret;
}
