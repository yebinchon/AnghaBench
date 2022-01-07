
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext3_dir_entry_2 {scalar_t__ inode; int rec_len; int name_len; } ;
struct dx_map_entry {int offs; } ;


 unsigned int EXT3_DIR_REC_LEN (int ) ;
 int ext3_rec_len_to_disk (unsigned int) ;
 int memcpy (char*,struct ext3_dir_entry_2*,unsigned int) ;

__attribute__((used)) static struct ext3_dir_entry_2 *
dx_move_dirents(char *from, char *to, struct dx_map_entry *map, int count)
{
 unsigned rec_len = 0;

 while (count--) {
  struct ext3_dir_entry_2 *de = (struct ext3_dir_entry_2 *) (from + map->offs);
  rec_len = EXT3_DIR_REC_LEN(de->name_len);
  memcpy (to, de, rec_len);
  ((struct ext3_dir_entry_2 *) to)->rec_len =
    ext3_rec_len_to_disk(rec_len);
  de->inode = 0;
  map++;
  to += rec_len;
 }
 return (struct ext3_dir_entry_2 *) (to - rec_len);
}
