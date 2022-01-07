
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct item_head {int dummy; } ;
struct inode {scalar_t__ i_size; TYPE_1__* i_sb; } ;
struct cpu_key {int dummy; } ;
struct buffer_head {int b_page; } ;
typedef scalar_t__ sector_t ;
typedef int loff_t ;
typedef scalar_t__ b_blocknr_t ;
typedef int __le32 ;
struct TYPE_14__ {int pos_in_item; } ;
struct TYPE_13__ {int s_blocksize; } ;


 int BUG () ;
 scalar_t__ B_I_PITEM (struct buffer_head*,struct item_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 int EIO ;
 int ENOENT ;
 int GET_BLOCK_NO_HOLE ;
 int GET_BLOCK_READ_DIRECT ;
 int INITIALIZE_PATH (TYPE_2__) ;
 int IO_ERROR ;
 int PAGE_CACHE_SIZE ;
 int PATH_LAST_POSITION (TYPE_2__*) ;
 int POSITION_FOUND ;
 scalar_t__ PageUptodate (int ) ;
 int TYPE_ANY ;
 int UNFM_P_SIZE ;
 scalar_t__ buffer_uptodate (struct buffer_head*) ;
 int copy_item_head (struct item_head*,struct item_head*) ;
 int cpu_key_k_offset (struct cpu_key*) ;
 int flush_dcache_page (int ) ;
 scalar_t__ fs_changed (int,TYPE_1__*) ;
 scalar_t__ get_block_num (int *,int) ;
 int get_generation (TYPE_1__*) ;
 struct item_head* get_ih (TYPE_2__*) ;
 struct buffer_head* get_last_bh (TYPE_2__*) ;
 int ih_item_len (struct item_head*) ;
 int is_direct_le_ih (struct item_head*) ;
 scalar_t__ is_indirect_le_ih (struct item_head*) ;
 scalar_t__ item_moved (struct item_head*,TYPE_2__*) ;
 scalar_t__ kmap (int ) ;
 int kunmap (int ) ;
 int le_ih_k_offset (struct item_head*) ;
 int make_cpu_key (struct cpu_key*,struct inode*,int,int ,int) ;
 int map_bh (struct buffer_head*,TYPE_1__*,scalar_t__) ;
 int memcpy (char*,scalar_t__,int) ;
 int memset (char*,int ,int) ;
 TYPE_2__ path ;
 int pathrelse (TYPE_2__*) ;
 int search_for_position_by_key (TYPE_1__*,struct cpu_key*,TYPE_2__*) ;
 int set_buffer_boundary (struct buffer_head*) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int set_cpu_key_k_offset (struct cpu_key*,int) ;

__attribute__((used)) static int _get_block_create_0(struct inode *inode, sector_t block,
          struct buffer_head *bh_result, int args)
{
 INITIALIZE_PATH(path);
 struct cpu_key key;
 struct buffer_head *bh;
 struct item_head *ih, tmp_ih;
 int fs_gen;
 b_blocknr_t blocknr;
 char *p = ((void*)0);
 int chars;
 int ret;
 int result;
 int done = 0;
 unsigned long offset;


 make_cpu_key(&key, inode,
       (loff_t) block * inode->i_sb->s_blocksize + 1, TYPE_ANY,
       3);

      research:
 result = search_for_position_by_key(inode->i_sb, &key, &path);
 if (result != POSITION_FOUND) {
  pathrelse(&path);
  if (p)
   kunmap(bh_result->b_page);
  if (result == IO_ERROR)
   return -EIO;


  if ((args & GET_BLOCK_NO_HOLE)
      && !PageUptodate(bh_result->b_page)) {
   return -ENOENT;
  }
  return 0;
 }

 bh = get_last_bh(&path);
 ih = get_ih(&path);
 if (is_indirect_le_ih(ih)) {
  __le32 *ind_item = (__le32 *) B_I_PITEM(bh, ih);




  blocknr = get_block_num(ind_item, path.pos_in_item);
  ret = 0;
  if (blocknr) {
   map_bh(bh_result, inode->i_sb, blocknr);
   if (path.pos_in_item ==
       ((ih_item_len(ih) / UNFM_P_SIZE) - 1)) {
    set_buffer_boundary(bh_result);
   }
  } else


  if ((args & GET_BLOCK_NO_HOLE)
       && !PageUptodate(bh_result->b_page)) {
   ret = -ENOENT;
  }

  pathrelse(&path);
  if (p)
   kunmap(bh_result->b_page);
  return ret;
 }

 if (!(args & GET_BLOCK_READ_DIRECT)) {


  pathrelse(&path);
  if (p)
   kunmap(bh_result->b_page);
  return -ENOENT;
 }





 if (buffer_uptodate(bh_result)) {
  goto finished;
 } else






 if (!bh_result->b_page || PageUptodate(bh_result->b_page)) {
  set_buffer_uptodate(bh_result);
  goto finished;
 }

 offset = (cpu_key_k_offset(&key) - 1) & (PAGE_CACHE_SIZE - 1);
 fs_gen = get_generation(inode->i_sb);
 copy_item_head(&tmp_ih, ih);






 if (!p) {
  p = (char *)kmap(bh_result->b_page);
  if (fs_changed(fs_gen, inode->i_sb)
      && item_moved(&tmp_ih, &path)) {
   goto research;
  }
 }
 p += offset;
 memset(p, 0, inode->i_sb->s_blocksize);
 do {
  if (!is_direct_le_ih(ih)) {
   BUG();
  }





  if ((le_ih_k_offset(ih) + path.pos_in_item) > inode->i_size)
   break;
  if ((le_ih_k_offset(ih) - 1 + ih_item_len(ih)) > inode->i_size) {
   chars =
       inode->i_size - (le_ih_k_offset(ih) - 1) -
       path.pos_in_item;
   done = 1;
  } else {
   chars = ih_item_len(ih) - path.pos_in_item;
  }
  memcpy(p, B_I_PITEM(bh, ih) + path.pos_in_item, chars);

  if (done)
   break;

  p += chars;

  if (PATH_LAST_POSITION(&path) != (B_NR_ITEMS(bh) - 1))




   break;


  set_cpu_key_k_offset(&key, cpu_key_k_offset(&key) + chars);
  result = search_for_position_by_key(inode->i_sb, &key, &path);
  if (result != POSITION_FOUND)

   break;
  bh = get_last_bh(&path);
  ih = get_ih(&path);
 } while (1);

 flush_dcache_page(bh_result->b_page);
 kunmap(bh_result->b_page);

      finished:
 pathrelse(&path);

 if (result == IO_ERROR)
  return -EIO;




 map_bh(bh_result, inode->i_sb, 0);
 set_buffer_uptodate(bh_result);
 return 0;
}
