
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct the_nilfs {int ns_sufile; int ns_bdi; int ns_crc_seed; } ;
struct page {int dummy; } ;
struct TYPE_4__ {scalar_t__ scnt; int flags; } ;
struct nilfs_sc_info {int sc_gc_inodes; int sc_dirty_files; TYPE_2__ sc_stage; TYPE_1__* sc_curseg; int * sc_super_root; int sc_seg_ctime; int sc_flags; struct nilfs_sb_info* sc_sbi; } ;
struct nilfs_sb_info {int s_ifile; struct the_nilfs* s_nilfs; } ;
struct TYPE_3__ {int sb_sum; } ;


 int NILFS_CF_HISTORY_MASK ;
 int NILFS_CF_IFILE_STARTED ;
 int NILFS_SC_DIRTY ;
 scalar_t__ NILFS_SEG_EMPTY (int *) ;
 scalar_t__ NILFS_ST_DONE ;
 scalar_t__ NILFS_ST_INIT ;
 int get_seconds () ;
 scalar_t__ nilfs_doing_gc () ;
 int nilfs_redirty_inodes (int *) ;
 int nilfs_segctor_abort_write (struct nilfs_sc_info*,struct page*,int) ;
 int nilfs_segctor_assign (struct nilfs_sc_info*,int) ;
 int nilfs_segctor_begin_construction (struct nilfs_sc_info*,struct the_nilfs*) ;
 int nilfs_segctor_cancel_segusage (struct nilfs_sc_info*,int ) ;
 int nilfs_segctor_check_in_files (struct nilfs_sc_info*,struct nilfs_sb_info*) ;
 int nilfs_segctor_check_out_files (struct nilfs_sc_info*,struct nilfs_sb_info*) ;
 scalar_t__ nilfs_segctor_clean (struct nilfs_sc_info*) ;
 int nilfs_segctor_clear_metadata_dirty (struct nilfs_sc_info*) ;
 int nilfs_segctor_collect (struct nilfs_sc_info*,struct the_nilfs*,int) ;
 int nilfs_segctor_complete_write (struct nilfs_sc_info*) ;
 int nilfs_segctor_destroy_segment_buffers (struct nilfs_sc_info*) ;
 int nilfs_segctor_end_construction (struct nilfs_sc_info*,struct the_nilfs*,int) ;
 int nilfs_segctor_fill_in_checkpoint (struct nilfs_sc_info*) ;
 int nilfs_segctor_fill_in_checksums (struct nilfs_sc_info*,int ) ;
 int nilfs_segctor_fill_in_file_bmap (struct nilfs_sc_info*,int ) ;
 int nilfs_segctor_fill_in_super_root (struct nilfs_sc_info*,struct the_nilfs*) ;
 int nilfs_segctor_prepare_write (struct nilfs_sc_info*,struct page**) ;
 int nilfs_segctor_update_segusage (struct nilfs_sc_info*,int ) ;
 int nilfs_segctor_write (struct nilfs_sc_info*,int ) ;
 scalar_t__ nilfs_test_metadata_dirty (struct nilfs_sb_info*) ;
 int set_bit (int ,int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_segctor_do_construct(struct nilfs_sc_info *sci, int mode)
{
 struct nilfs_sb_info *sbi = sci->sc_sbi;
 struct the_nilfs *nilfs = sbi->s_nilfs;
 struct page *failed_page;
 int err, has_sr = 0;

 sci->sc_stage.scnt = NILFS_ST_INIT;

 err = nilfs_segctor_check_in_files(sci, sbi);
 if (unlikely(err))
  goto out;

 if (nilfs_test_metadata_dirty(sbi))
  set_bit(NILFS_SC_DIRTY, &sci->sc_flags);

 if (nilfs_segctor_clean(sci))
  goto out;

 do {
  sci->sc_stage.flags &= ~NILFS_CF_HISTORY_MASK;

  err = nilfs_segctor_begin_construction(sci, nilfs);
  if (unlikely(err))
   goto out;


  sci->sc_seg_ctime = get_seconds();

  err = nilfs_segctor_collect(sci, nilfs, mode);
  if (unlikely(err))
   goto failed;

  has_sr = (sci->sc_super_root != ((void*)0));


  if (sci->sc_stage.scnt == NILFS_ST_DONE &&
      NILFS_SEG_EMPTY(&sci->sc_curseg->sb_sum)) {
   nilfs_segctor_end_construction(sci, nilfs, 1);
   goto out;
  }

  err = nilfs_segctor_assign(sci, mode);
  if (unlikely(err))
   goto failed;

  if (sci->sc_stage.flags & NILFS_CF_IFILE_STARTED)
   nilfs_segctor_fill_in_file_bmap(sci, sbi->s_ifile);

  if (has_sr) {
   err = nilfs_segctor_fill_in_checkpoint(sci);
   if (unlikely(err))
    goto failed_to_make_up;

   nilfs_segctor_fill_in_super_root(sci, nilfs);
  }
  nilfs_segctor_update_segusage(sci, nilfs->ns_sufile);


  err = nilfs_segctor_prepare_write(sci, &failed_page);
  if (unlikely(err))
   goto failed_to_write;

  nilfs_segctor_fill_in_checksums(sci, nilfs->ns_crc_seed);

  err = nilfs_segctor_write(sci, nilfs->ns_bdi);
  if (unlikely(err))
   goto failed_to_write;

  nilfs_segctor_complete_write(sci);


  if (has_sr)
   nilfs_segctor_clear_metadata_dirty(sci);

  nilfs_segctor_end_construction(sci, nilfs, 0);

 } while (sci->sc_stage.scnt != NILFS_ST_DONE);

 out:
 nilfs_segctor_destroy_segment_buffers(sci);
 nilfs_segctor_check_out_files(sci, sbi);
 return err;

 failed_to_write:
 nilfs_segctor_abort_write(sci, failed_page, err);
 nilfs_segctor_cancel_segusage(sci, nilfs->ns_sufile);

 failed_to_make_up:
 if (sci->sc_stage.flags & NILFS_CF_IFILE_STARTED)
  nilfs_redirty_inodes(&sci->sc_dirty_files);

 failed:
 if (nilfs_doing_gc())
  nilfs_redirty_inodes(&sci->sc_gc_inodes);
 nilfs_segctor_end_construction(sci, nilfs, err);
 goto out;
}
