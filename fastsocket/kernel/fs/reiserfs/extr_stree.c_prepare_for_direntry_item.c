
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treepath {int dummy; } ;
struct item_head {int dummy; } ;
struct inode {int dummy; } ;
typedef scalar_t__ loff_t ;


 int DEH_SIZE ;
 scalar_t__ DOT_OFFSET ;
 int IH_SIZE ;
 int M_CUT ;
 int M_DELETE ;
 int RFALSE (int,char*,struct item_head*) ;
 int entry_length (int ,struct item_head*,int ) ;
 int get_last_bh (struct treepath*) ;
 int ih_entry_count (struct item_head*) ;
 int ih_item_len (struct item_head*) ;
 scalar_t__ le_ih_k_offset (struct item_head*) ;
 scalar_t__ max_reiserfs_offset (struct inode*) ;
 int pos_in_item (struct treepath*) ;

__attribute__((used)) static inline int prepare_for_direntry_item(struct treepath *path,
         struct item_head *le_ih,
         struct inode *inode,
         loff_t new_file_length,
         int *cut_size)
{
 if (le_ih_k_offset(le_ih) == DOT_OFFSET &&
     new_file_length == max_reiserfs_offset(inode)) {
  RFALSE(ih_entry_count(le_ih) != 2,
         "PAP-5220: incorrect empty directory item (%h)", le_ih);
  *cut_size = -(IH_SIZE + ih_item_len(le_ih));
  return M_DELETE;
 }

 if (ih_entry_count(le_ih) == 1) {


  *cut_size = -(IH_SIZE + ih_item_len(le_ih));
  return M_DELETE;
 }


 *cut_size =
     -(DEH_SIZE +
       entry_length(get_last_bh(path), le_ih, pos_in_item(path)));
 return M_CUT;
}
