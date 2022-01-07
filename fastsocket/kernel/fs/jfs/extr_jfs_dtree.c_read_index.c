
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct metapage {int dummy; } ;
struct inode {int dummy; } ;
struct dir_table_slot {int dummy; } ;
typedef int s64 ;


 int EIO ;
 struct dir_table_slot* find_index (struct inode*,int ,struct metapage**,int *) ;
 int memcpy (struct dir_table_slot*,struct dir_table_slot*,int) ;
 int release_metapage (struct metapage*) ;

__attribute__((used)) static int read_index(struct inode *ip, u32 index,
       struct dir_table_slot * dirtab_slot)
{
 s64 lblock;
 struct metapage *mp = ((void*)0);
 struct dir_table_slot *slot;

 slot = find_index(ip, index, &mp, &lblock);
 if (!slot) {
  return -EIO;
 }

 memcpy(dirtab_slot, slot, sizeof(struct dir_table_slot));

 if (mp)
  release_metapage(mp);

 return 0;
}
