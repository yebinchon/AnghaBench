
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_de_head {int dummy; } ;
struct item_head {int ih_key; } ;
struct buffer_info {struct buffer_head* bi_bh; } ;
struct buffer_head {char* b_data; } ;


 struct reiserfs_de_head* B_I_DEH (struct buffer_head*,struct item_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 struct item_head* B_N_PITEM_HEAD (struct buffer_head*,int) ;
 int B_N_PKEY (struct buffer_head*,int) ;
 int DEH_SIZE ;
 scalar_t__ DOT_OFFSET ;
 int FIRST_TO_LAST ;
 int I_ENTRY_COUNT (struct item_head*) ;
 int KEY_FORMAT_3_5 ;
 int KEY_SIZE ;
 int LAST_TO_FIRST ;
 int MAX_US_INT ;
 int RFALSE (int,char*) ;
 int TYPE_DIRENTRY ;
 int U32_MAX ;
 scalar_t__ comp_short_le_keys (int *,int ) ;
 int deh_location (struct reiserfs_de_head*) ;
 int deh_offset (struct reiserfs_de_head*) ;
 int ih_item_len (struct item_head*) ;
 int ih_location (struct item_head*) ;
 int is_direntry_le_ih (struct item_head*) ;
 scalar_t__ le_ih_k_offset (struct item_head*) ;
 int leaf_insert_into_buf (struct buffer_info*,int,struct item_head*,int *,int ) ;
 int leaf_paste_entries (struct buffer_info*,int,int,int,struct reiserfs_de_head*,char*,int) ;
 int leaf_paste_in_buffer (struct buffer_info*,int,int ,int,char*,int ) ;
 int memcpy (int *,int *,int ) ;
 int put_ih_entry_count (struct item_head*,int ) ;
 int put_ih_item_len (struct item_head*,int) ;
 int put_ih_version (struct item_head*,int ) ;
 int set_le_ih_k_offset (struct item_head*,int ) ;
 int set_le_key_k_type (int ,int *,int ) ;

__attribute__((used)) static void leaf_copy_dir_entries(struct buffer_info *dest_bi,
      struct buffer_head *source, int last_first,
      int item_num, int from, int copy_count)
{
 struct buffer_head *dest = dest_bi->bi_bh;
 int item_num_in_dest;



 struct item_head *ih;
 struct reiserfs_de_head *deh;
 int copy_records_len;
 char *records;

 ih = B_N_PITEM_HEAD(source, item_num);

 RFALSE(!is_direntry_le_ih(ih), "vs-10000: item must be directory item");


 deh = B_I_DEH(source, ih);
 if (copy_count) {
  copy_records_len = (from ? deh_location(&(deh[from - 1])) :
        ih_item_len(ih)) -
      deh_location(&(deh[from + copy_count - 1]));
  records =
      source->b_data + ih_location(ih) +
      deh_location(&(deh[from + copy_count - 1]));
 } else {
  copy_records_len = 0;
  records = ((void*)0);
 }


 item_num_in_dest =
     (last_first ==
      LAST_TO_FIRST) ? ((B_NR_ITEMS(dest)) ? 0 : -1) : (B_NR_ITEMS(dest)
              - 1);


 if ((item_num_in_dest == -1) ||
     (last_first == FIRST_TO_LAST && le_ih_k_offset(ih) == DOT_OFFSET) ||
     (last_first == LAST_TO_FIRST
      && comp_short_le_keys (&ih->ih_key,
        B_N_PKEY(dest,
          item_num_in_dest))))
 {

  struct item_head new_ih;


  memcpy(&new_ih.ih_key, &ih->ih_key, KEY_SIZE);
  put_ih_version(&new_ih, KEY_FORMAT_3_5);

  put_ih_item_len(&new_ih,
    DEH_SIZE * copy_count + copy_records_len);
  put_ih_entry_count(&new_ih, 0);

  if (last_first == LAST_TO_FIRST) {

   if (from < I_ENTRY_COUNT(ih)) {
    set_le_ih_k_offset(&new_ih,
         deh_offset(&(deh[from])));

   } else {

    set_le_ih_k_offset(&new_ih, U32_MAX);

   }
   set_le_key_k_type(KEY_FORMAT_3_5, &(new_ih.ih_key),
       TYPE_DIRENTRY);
  }


  leaf_insert_into_buf(dest_bi,
         (last_first ==
          LAST_TO_FIRST) ? 0 : B_NR_ITEMS(dest),
         &new_ih, ((void*)0), 0);
 } else {

  leaf_paste_in_buffer(dest_bi,
         (last_first ==
          FIRST_TO_LAST) ? (B_NR_ITEMS(dest) -
       1) : 0, MAX_US_INT,
         DEH_SIZE * copy_count + copy_records_len,
         records, 0);
 }

 item_num_in_dest =
     (last_first == FIRST_TO_LAST) ? (B_NR_ITEMS(dest) - 1) : 0;

 leaf_paste_entries(dest_bi, item_num_in_dest,
      (last_first ==
       FIRST_TO_LAST) ? I_ENTRY_COUNT(B_N_PITEM_HEAD(dest,
           item_num_in_dest))
      : 0, copy_count, deh + from, records,
      DEH_SIZE * copy_count + copy_records_len);
}
