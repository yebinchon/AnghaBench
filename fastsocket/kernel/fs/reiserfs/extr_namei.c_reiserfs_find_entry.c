
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct treepath {int pos_in_item; } ;
struct reiserfs_dir_entry {int de_ih; int de_entry_num; } ;
struct inode {TYPE_1__* i_sb; } ;
struct cpu_key {int dummy; } ;
struct TYPE_4__ {int s_blocksize; } ;


 int GOTO_PREVIOUS_ITEM ;
 int IO_ERROR ;
 int NAME_NOT_FOUND ;
 int REISERFS_MAX_NAME (int ) ;
 int TYPE_DIRENTRY ;
 int get_third_component (TYPE_1__*,char const*,int) ;
 scalar_t__ le_ih_k_offset (int ) ;
 int linear_search_in_dir_item (struct cpu_key*,struct reiserfs_dir_entry*,char const*,int) ;
 int make_cpu_key (struct cpu_key*,struct inode*,int ,int ,int) ;
 int pathrelse (struct treepath*) ;
 int reiserfs_error (TYPE_1__*,char*,char*) ;
 int search_by_entry_key (TYPE_1__*,struct cpu_key*,struct treepath*,struct reiserfs_dir_entry*) ;
 int set_cpu_key_k_offset (struct cpu_key*,scalar_t__) ;

__attribute__((used)) static int reiserfs_find_entry(struct inode *dir, const char *name, int namelen,
          struct treepath *path_to_entry,
          struct reiserfs_dir_entry *de)
{
 struct cpu_key key_to_search;
 int retval;

 if (namelen > REISERFS_MAX_NAME(dir->i_sb->s_blocksize))
  return NAME_NOT_FOUND;


 make_cpu_key(&key_to_search, dir,
       get_third_component(dir->i_sb, name, namelen),
       TYPE_DIRENTRY, 3);

 while (1) {
  retval =
      search_by_entry_key(dir->i_sb, &key_to_search,
     path_to_entry, de);
  if (retval == IO_ERROR) {
   reiserfs_error(dir->i_sb, "zam-7001", "io error");
   return IO_ERROR;
  }


  retval =
      linear_search_in_dir_item(&key_to_search, de, name,
           namelen);
  if (retval != GOTO_PREVIOUS_ITEM) {

   path_to_entry->pos_in_item = de->de_entry_num;
   return retval;
  }


  set_cpu_key_k_offset(&key_to_search,
         le_ih_k_offset(de->de_ih) - 1);
  pathrelse(path_to_entry);

 }
}
