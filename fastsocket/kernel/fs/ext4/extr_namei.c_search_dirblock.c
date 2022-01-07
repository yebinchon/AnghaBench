
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {char* name; int len; } ;
struct inode {TYPE_1__* i_sb; } ;
struct ext4_dir_entry_2 {int rec_len; } ;
struct buffer_head {char* b_data; } ;
struct TYPE_2__ {int s_blocksize; } ;


 int ext4_check_dir_entry (char*,struct inode*,struct ext4_dir_entry_2*,struct buffer_head*,unsigned int) ;
 scalar_t__ ext4_match (int,char const*,struct ext4_dir_entry_2*) ;
 int ext4_rec_len_from_disk (int ,int) ;

__attribute__((used)) static inline int search_dirblock(struct buffer_head *bh,
      struct inode *dir,
      const struct qstr *d_name,
      unsigned int offset,
      struct ext4_dir_entry_2 ** res_dir)
{
 struct ext4_dir_entry_2 * de;
 char * dlimit;
 int de_len;
 const char *name = d_name->name;
 int namelen = d_name->len;

 de = (struct ext4_dir_entry_2 *) bh->b_data;
 dlimit = bh->b_data + dir->i_sb->s_blocksize;
 while ((char *) de < dlimit) {



  if ((char *) de + namelen <= dlimit &&
      ext4_match (namelen, name, de)) {

   if (!ext4_check_dir_entry("ext4_find_entry",
        dir, de, bh, offset))
    return -1;
   *res_dir = de;
   return 1;
  }

  de_len = ext4_rec_len_from_disk(de->rec_len,
      dir->i_sb->s_blocksize);
  if (de_len <= 0)
   return -1;
  offset += de_len;
  de = (struct ext4_dir_entry_2 *) ((char *) de + de_len);
 }
 return 0;
}
