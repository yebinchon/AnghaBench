
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_dev; int s_blocksize; int s_bdev; } ;
struct reiserfs_journal {int * j_dev_bd; void* j_dev_mode; } ;
typedef void* fmode_t ;
typedef scalar_t__ dev_t ;


 int BDEVNAME_SIZE ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 scalar_t__ SB_ONDISK_JOURNAL_DEVICE (struct super_block*) ;
 int __bdevname (scalar_t__,char*) ;
 int bd_claim (int *,struct reiserfs_journal*) ;
 scalar_t__ bdev_read_only (int ) ;
 int bdevname (int *,char*) ;
 int blkdev_put (int *,void*) ;
 scalar_t__ new_decode_dev (scalar_t__) ;
 int * open_bdev_exclusive (char const*,void*,struct reiserfs_journal*) ;
 int * open_by_devnum (scalar_t__,void*) ;
 int reiserfs_info (struct super_block*,char*,int ) ;
 int reiserfs_warning (struct super_block*,char*,char const*,int,...) ;
 int set_blocksize (int *,int ) ;

__attribute__((used)) static int journal_init_dev(struct super_block *super,
       struct reiserfs_journal *journal,
       const char *jdev_name)
{
 int result;
 dev_t jdev;
 fmode_t blkdev_mode = FMODE_READ | FMODE_WRITE;
 char b[BDEVNAME_SIZE];

 result = 0;

 journal->j_dev_bd = ((void*)0);
 jdev = SB_ONDISK_JOURNAL_DEVICE(super) ?
     new_decode_dev(SB_ONDISK_JOURNAL_DEVICE(super)) : super->s_dev;

 if (bdev_read_only(super->s_bdev))
  blkdev_mode = FMODE_READ;


 if ((!jdev_name || !jdev_name[0])) {
  journal->j_dev_bd = open_by_devnum(jdev, blkdev_mode);
  journal->j_dev_mode = blkdev_mode;
  if (IS_ERR(journal->j_dev_bd)) {
   result = PTR_ERR(journal->j_dev_bd);
   journal->j_dev_bd = ((void*)0);
   reiserfs_warning(super, "sh-458",
      "cannot init journal device '%s': %i",
      __bdevname(jdev, b), result);
   return result;
  } else if (jdev != super->s_dev) {
   result = bd_claim(journal->j_dev_bd, journal);
   if (result) {
    blkdev_put(journal->j_dev_bd, blkdev_mode);
    return result;
   }

   set_blocksize(journal->j_dev_bd, super->s_blocksize);
  }

  return 0;
 }

 journal->j_dev_mode = blkdev_mode;
 journal->j_dev_bd = open_bdev_exclusive(jdev_name,
      blkdev_mode, journal);
 if (IS_ERR(journal->j_dev_bd)) {
  result = PTR_ERR(journal->j_dev_bd);
  journal->j_dev_bd = ((void*)0);
  reiserfs_warning(super,
     "journal_init_dev: Cannot open '%s': %i",
     jdev_name, result);
  return result;
 }

 set_blocksize(journal->j_dev_bd, super->s_blocksize);
 reiserfs_info(super,
        "journal_init_dev: journal device: %s\n",
        bdevname(journal->j_dev_bd, b));
 return 0;
}
