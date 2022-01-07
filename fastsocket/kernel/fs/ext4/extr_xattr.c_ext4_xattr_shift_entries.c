
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_xattr_entry {int e_value_offs; scalar_t__ e_value_size; int e_value_block; } ;


 int BUG_ON (int) ;
 struct ext4_xattr_entry* EXT4_XATTR_NEXT (struct ext4_xattr_entry*) ;
 int IS_LAST_ENTRY (struct ext4_xattr_entry*) ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 int memmove (void*,void*,size_t) ;

__attribute__((used)) static void ext4_xattr_shift_entries(struct ext4_xattr_entry *entry,
         int value_offs_shift, void *to,
         void *from, size_t n, int blocksize)
{
 struct ext4_xattr_entry *last = entry;
 int new_offs;


 for (; !IS_LAST_ENTRY(last); last = EXT4_XATTR_NEXT(last)) {
  if (!last->e_value_block && last->e_value_size) {
   new_offs = le16_to_cpu(last->e_value_offs) +
       value_offs_shift;
   BUG_ON(new_offs + le32_to_cpu(last->e_value_size)
     > blocksize);
   last->e_value_offs = cpu_to_le16(new_offs);
  }
 }

 memmove(to, from, n);
}
