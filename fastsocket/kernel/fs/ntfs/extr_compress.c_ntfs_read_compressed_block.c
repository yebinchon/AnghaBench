
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u8 ;
typedef unsigned long u64 ;
typedef unsigned long u32 ;
typedef scalar_t__ u16 ;
struct super_block {unsigned long s_blocksize; unsigned char s_blocksize_bits; } ;
struct page {unsigned long index; int * b_data; int b_end_io; struct address_space* mapping; } ;
struct buffer_head {unsigned long index; int * b_data; int b_end_io; struct address_space* mapping; } ;
struct address_space {int host; } ;
typedef unsigned long s64 ;
struct TYPE_14__ {unsigned long vcn; scalar_t__ length; } ;
typedef TYPE_4__ runlist_element ;
struct TYPE_15__ {unsigned long cluster_size_bits; unsigned char cluster_size; struct super_block* sb; } ;
typedef TYPE_5__ ntfs_volume ;
struct TYPE_13__ {int lock; TYPE_4__* rl; } ;
struct TYPE_11__ {unsigned long block_size; unsigned long block_size_bits; unsigned int block_clusters; } ;
struct TYPE_12__ {TYPE_1__ compressed; } ;
struct TYPE_16__ {scalar_t__ type; int name_len; unsigned long initialized_size; TYPE_3__ runlist; int mft_no; TYPE_2__ itype; int size_lock; TYPE_5__* vol; } ;
typedef TYPE_6__ ntfs_inode ;
typedef int loff_t ;
typedef unsigned long VCN ;
typedef unsigned char LCN ;


 scalar_t__ AT_DATA ;
 int BUG_ON (int) ;
 int ClearPageError (struct page*) ;
 int EIO ;
 int ENOMEM ;
 int EOVERFLOW ;
 int GFP_NOFS ;
 unsigned char LCN_HOLE ;
 unsigned char LCN_RL_NOT_MAPPED ;
 TYPE_6__* NTFS_I (int ) ;
 int PAGE_CACHE_MASK ;
 unsigned long PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int PageDirty (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 int PageUptodate (struct page*) ;
 int READ ;
 int SetPageUptodate (struct page*) ;
 int VFS_I (TYPE_6__*) ;
 int barrier () ;
 int blk_run_address_space (struct address_space*) ;
 int brelse (struct page*) ;
 int buffer_uptodate (struct page*) ;
 int clear_page (int *) ;
 int down_read (int *) ;
 int end_buffer_read_sync ;
 int flush_dcache_page (struct page*) ;
 int get_bh (struct page*) ;
 struct page* grab_cache_page_nowait (struct address_space*,unsigned long) ;
 int handle_bounds_compressed_page (struct page*,int,unsigned long) ;
 int i_size_read (int ) ;
 int kfree (struct page**) ;
 struct page** kmalloc (int,int ) ;
 int kmap (struct page*) ;
 int kunmap (struct page*) ;
 scalar_t__ likely (unsigned char) ;
 int memcpy (int *,int *,unsigned int) ;
 int memset (int *,int ,unsigned int) ;
 int ntfs_cb_lock ;
 int * ntfs_compression_buffer ;
 int ntfs_debug (char*,...) ;
 int ntfs_decompress (struct page**,unsigned int*,unsigned int*,int,unsigned int,unsigned int,unsigned char*,int *,unsigned long,int,unsigned long) ;
 int ntfs_error (struct super_block*,char*,...) ;
 int ntfs_map_runlist (TYPE_6__*,unsigned long) ;
 unsigned char ntfs_rl_vcn_to_lcn (TYPE_4__*,unsigned long) ;
 int ntfs_warning (struct super_block*,char*) ;
 int * page_address (struct page*) ;
 int page_cache_release (struct page*) ;
 int put_bh (struct page*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 struct page* sb_getblk (struct super_block*,int) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int submit_bh (int ,struct page*) ;
 int trylock_buffer (struct page*) ;
 scalar_t__ unlikely (int) ;
 int unlock_buffer (struct page*) ;
 int unlock_page (struct page*) ;
 int up_read (int *) ;
 int wait_on_buffer (struct page*) ;
 int zero_user (struct page*,int ,int) ;

int ntfs_read_compressed_block(struct page *page)
{
 loff_t i_size;
 s64 initialized_size;
 struct address_space *mapping = page->mapping;
 ntfs_inode *ni = NTFS_I(mapping->host);
 ntfs_volume *vol = ni->vol;
 struct super_block *sb = vol->sb;
 runlist_element *rl;
 unsigned long flags, block_size = sb->s_blocksize;
 unsigned char block_size_bits = sb->s_blocksize_bits;
 u8 *cb, *cb_pos, *cb_end;
 struct buffer_head **bhs;
 unsigned long offset, index = page->index;
 u32 cb_size = ni->itype.compressed.block_size;
 u64 cb_size_mask = cb_size - 1UL;
 VCN vcn;
 LCN lcn;

 VCN start_vcn = (((s64)index << PAGE_CACHE_SHIFT) & ~cb_size_mask) >>
   vol->cluster_size_bits;




 VCN end_vcn = ((((s64)(index + 1UL) << PAGE_CACHE_SHIFT) + cb_size - 1)
   & ~cb_size_mask) >> vol->cluster_size_bits;

 unsigned int nr_cbs = (end_vcn - start_vcn) << vol->cluster_size_bits
   >> ni->itype.compressed.block_size_bits;





 unsigned int nr_pages = (end_vcn - start_vcn) <<
   vol->cluster_size_bits >> PAGE_CACHE_SHIFT;
 unsigned int xpage, max_page, cur_page, cur_ofs, i;
 unsigned int cb_clusters, cb_max_ofs;
 int block, max_block, cb_max_page, bhs_size, nr_bhs, err = 0;
 struct page **pages;
 unsigned char xpage_done = 0;

 ntfs_debug("Entering, page->index = 0x%lx, cb_size = 0x%x, nr_pages = "
   "%i.", index, cb_size, nr_pages);




 BUG_ON(ni->type != AT_DATA);
 BUG_ON(ni->name_len);

 pages = kmalloc(nr_pages * sizeof(struct page *), GFP_NOFS);


 bhs_size = cb_size / block_size * sizeof(struct buffer_head *);
 bhs = kmalloc(bhs_size, GFP_NOFS);

 if (unlikely(!pages || !bhs)) {
  kfree(bhs);
  kfree(pages);
  unlock_page(page);
  ntfs_error(vol->sb, "Failed to allocate internal buffers.");
  return -ENOMEM;
 }





 offset = start_vcn << vol->cluster_size_bits >> PAGE_CACHE_SHIFT;
 xpage = index - offset;
 pages[xpage] = page;




 read_lock_irqsave(&ni->size_lock, flags);
 i_size = i_size_read(VFS_I(ni));
 initialized_size = ni->initialized_size;
 read_unlock_irqrestore(&ni->size_lock, flags);
 max_page = ((i_size + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT) -
   offset;

 if (xpage >= max_page) {
  kfree(bhs);
  kfree(pages);
  zero_user(page, 0, PAGE_CACHE_SIZE);
  ntfs_debug("Compressed read outside i_size - truncated?");
  SetPageUptodate(page);
  unlock_page(page);
  return 0;
 }
 if (nr_pages < max_page)
  max_page = nr_pages;
 for (i = 0; i < max_page; i++, offset++) {
  if (i != xpage)
   pages[i] = grab_cache_page_nowait(mapping, offset);
  page = pages[i];
  if (page) {





   if (!PageDirty(page) && (!PageUptodate(page) ||
     PageError(page))) {
    ClearPageError(page);
    kmap(page);
    continue;
   }
   unlock_page(page);
   page_cache_release(page);
   pages[i] = ((void*)0);
  }
 }





 cur_page = 0;
 cur_ofs = 0;
 cb_clusters = ni->itype.compressed.block_clusters;
do_next_cb:
 nr_cbs--;
 nr_bhs = 0;


 rl = ((void*)0);
 for (vcn = start_vcn, start_vcn += cb_clusters; vcn < start_vcn;
   vcn++) {
  bool is_retry = 0;

  if (!rl) {
lock_retry_remap:
   down_read(&ni->runlist.lock);
   rl = ni->runlist.rl;
  }
  if (likely(rl != ((void*)0))) {

   while (rl->length && rl[1].vcn <= vcn)
    rl++;
   lcn = ntfs_rl_vcn_to_lcn(rl, vcn);
  } else
   lcn = LCN_RL_NOT_MAPPED;
  ntfs_debug("Reading vcn = 0x%llx, lcn = 0x%llx.",
    (unsigned long long)vcn,
    (unsigned long long)lcn);
  if (lcn < 0) {




   if (lcn == LCN_HOLE)
    break;
   if (is_retry || lcn != LCN_RL_NOT_MAPPED)
    goto rl_err;
   is_retry = 1;




   up_read(&ni->runlist.lock);
   if (!ntfs_map_runlist(ni, vcn))
    goto lock_retry_remap;
   goto map_rl_err;
  }
  block = lcn << vol->cluster_size_bits >> block_size_bits;

  max_block = block + (vol->cluster_size >> block_size_bits);
  do {
   ntfs_debug("block = 0x%x.", block);
   if (unlikely(!(bhs[nr_bhs] = sb_getblk(sb, block))))
    goto getblk_err;
   nr_bhs++;
  } while (++block < max_block);
 }


 if (rl)
  up_read(&ni->runlist.lock);


 for (i = 0; i < nr_bhs; i++) {
  struct buffer_head *tbh = bhs[i];

  if (!trylock_buffer(tbh))
   continue;
  if (unlikely(buffer_uptodate(tbh))) {
   unlock_buffer(tbh);
   continue;
  }
  get_bh(tbh);
  tbh->b_end_io = end_buffer_read_sync;
  submit_bh(READ, tbh);
 }


 for (i = 0; i < nr_bhs; i++) {
  struct buffer_head *tbh = bhs[i];

  if (buffer_uptodate(tbh))
   continue;
  wait_on_buffer(tbh);
  barrier();
  if (unlikely(!buffer_uptodate(tbh))) {
   ntfs_warning(vol->sb, "Buffer is unlocked but not "
     "uptodate! Unplugging the disk queue "
     "and rescheduling.");
   get_bh(tbh);
   blk_run_address_space(mapping);
   schedule();
   put_bh(tbh);
   if (unlikely(!buffer_uptodate(tbh)))
    goto read_err;
   ntfs_warning(vol->sb, "Buffer is now uptodate. Good.");
  }
 }





 spin_lock(&ntfs_cb_lock);
 cb = ntfs_compression_buffer;

 BUG_ON(!cb);

 cb_pos = cb;
 cb_end = cb + cb_size;


 for (i = 0; i < nr_bhs; i++) {
  memcpy(cb_pos, bhs[i]->b_data, block_size);
  cb_pos += block_size;
 }


 if (cb_pos + 2 <= cb + cb_size)
  *(u16*)cb_pos = 0;


 cb_pos = cb;


 ntfs_debug("Successfully read the compression block.");


 cb_max_page = (cur_page << PAGE_CACHE_SHIFT) + cur_ofs + cb_size;
 cb_max_ofs = cb_max_page & ~PAGE_CACHE_MASK;
 cb_max_page >>= PAGE_CACHE_SHIFT;


 if (cb_max_page > max_page)
  cb_max_page = max_page;

 if (vcn == start_vcn - cb_clusters) {

  ntfs_debug("Found sparse compression block.");

  spin_unlock(&ntfs_cb_lock);
  if (cb_max_ofs)
   cb_max_page--;
  for (; cur_page < cb_max_page; cur_page++) {
   page = pages[cur_page];
   if (page) {





    if (likely(!cur_ofs))
     clear_page(page_address(page));
    else
     memset(page_address(page) + cur_ofs, 0,
       PAGE_CACHE_SIZE -
       cur_ofs);
    flush_dcache_page(page);
    kunmap(page);
    SetPageUptodate(page);
    unlock_page(page);
    if (cur_page == xpage)
     xpage_done = 1;
    else
     page_cache_release(page);
    pages[cur_page] = ((void*)0);
   }
   cb_pos += PAGE_CACHE_SIZE - cur_ofs;
   cur_ofs = 0;
   if (cb_pos >= cb_end)
    break;
  }

  if (cb_max_ofs && cb_pos < cb_end) {
   page = pages[cur_page];
   if (page)
    memset(page_address(page) + cur_ofs, 0,
      cb_max_ofs - cur_ofs);




   cur_ofs = cb_max_ofs;
  }
 } else if (vcn == start_vcn) {

  unsigned int cur2_page = cur_page;
  unsigned int cur_ofs2 = cur_ofs;
  u8 *cb_pos2 = cb_pos;

  ntfs_debug("Found uncompressed compression block.");
  if (cb_max_ofs)
   cb_max_page--;

  for (; cur_page < cb_max_page; cur_page++) {
   page = pages[cur_page];
   if (page)
    memcpy(page_address(page) + cur_ofs, cb_pos,
      PAGE_CACHE_SIZE - cur_ofs);
   cb_pos += PAGE_CACHE_SIZE - cur_ofs;
   cur_ofs = 0;
   if (cb_pos >= cb_end)
    break;
  }

  if (cb_max_ofs && cb_pos < cb_end) {
   page = pages[cur_page];
   if (page)
    memcpy(page_address(page) + cur_ofs, cb_pos,
      cb_max_ofs - cur_ofs);
   cb_pos += cb_max_ofs - cur_ofs;
   cur_ofs = cb_max_ofs;
  }

  spin_unlock(&ntfs_cb_lock);

  for (; cur2_page < cb_max_page; cur2_page++) {
   page = pages[cur2_page];
   if (page) {




    handle_bounds_compressed_page(page, i_size,
      initialized_size);
    flush_dcache_page(page);
    kunmap(page);
    SetPageUptodate(page);
    unlock_page(page);
    if (cur2_page == xpage)
     xpage_done = 1;
    else
     page_cache_release(page);
    pages[cur2_page] = ((void*)0);
   }
   cb_pos2 += PAGE_CACHE_SIZE - cur_ofs2;
   cur_ofs2 = 0;
   if (cb_pos2 >= cb_end)
    break;
  }
 } else {

  unsigned int prev_cur_page = cur_page;

  ntfs_debug("Found compressed compression block.");
  err = ntfs_decompress(pages, &cur_page, &cur_ofs,
    cb_max_page, cb_max_ofs, xpage, &xpage_done,
    cb_pos, cb_size - (cb_pos - cb), i_size,
    initialized_size);




  if (err) {
   ntfs_error(vol->sb, "ntfs_decompress() failed in inode "
     "0x%lx with error code %i. Skipping "
     "this compression block.",
     ni->mft_no, -err);

   for (; prev_cur_page < cur_page; prev_cur_page++) {
    page = pages[prev_cur_page];
    if (page) {
     flush_dcache_page(page);
     kunmap(page);
     unlock_page(page);
     if (prev_cur_page != xpage)
      page_cache_release(page);
     pages[prev_cur_page] = ((void*)0);
    }
   }
  }
 }


 for (i = 0; i < nr_bhs; i++)
  brelse(bhs[i]);


 if (nr_cbs)
  goto do_next_cb;


 kfree(bhs);


 for (cur_page = 0; cur_page < max_page; cur_page++) {
  page = pages[cur_page];
  if (page) {
   ntfs_error(vol->sb, "Still have pages left! "
     "Terminating them with extreme "
     "prejudice.  Inode 0x%lx, page index "
     "0x%lx.", ni->mft_no, page->index);
   flush_dcache_page(page);
   kunmap(page);
   unlock_page(page);
   if (cur_page != xpage)
    page_cache_release(page);
   pages[cur_page] = ((void*)0);
  }
 }


 kfree(pages);


 if (likely(xpage_done))
  return 0;

 ntfs_debug("Failed. Returning error code %s.", err == -EOVERFLOW ?
   "EOVERFLOW" : (!err ? "EIO" : "unkown error"));
 return err < 0 ? err : -EIO;

read_err:
 ntfs_error(vol->sb, "IO error while reading compressed data.");

 for (i = 0; i < nr_bhs; i++)
  brelse(bhs[i]);
 goto err_out;

map_rl_err:
 ntfs_error(vol->sb, "ntfs_map_runlist() failed. Cannot read "
   "compression block.");
 goto err_out;

rl_err:
 up_read(&ni->runlist.lock);
 ntfs_error(vol->sb, "ntfs_rl_vcn_to_lcn() failed. Cannot read "
   "compression block.");
 goto err_out;

getblk_err:
 up_read(&ni->runlist.lock);
 ntfs_error(vol->sb, "getblk() failed. Cannot read compression block.");

err_out:
 kfree(bhs);
 for (i = cur_page; i < max_page; i++) {
  page = pages[i];
  if (page) {
   flush_dcache_page(page);
   kunmap(page);
   unlock_page(page);
   if (i != xpage)
    page_cache_release(page);
  }
 }
 kfree(pages);
 return -EIO;
}
