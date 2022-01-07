
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_info {int size_tree; } ;
struct size_entry {int rb; } ;
typedef int ino_t ;


 struct size_entry* find_ino (struct ubifs_info*,int ) ;
 int kfree (struct size_entry*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void remove_ino(struct ubifs_info *c, ino_t inum)
{
 struct size_entry *e = find_ino(c, inum);

 if (!e)
  return;
 rb_erase(&e->rb, &c->size_tree);
 kfree(e);
}
