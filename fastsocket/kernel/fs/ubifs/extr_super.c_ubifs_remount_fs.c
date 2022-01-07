
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ taken_empty_lebs; } ;
struct TYPE_3__ {int * buf; } ;
struct ubifs_info {int bulk_read; TYPE_2__ lst; TYPE_1__ bu; scalar_t__ ro_media; } ;
struct super_block {int s_flags; struct ubifs_info* s_fs_info; } ;


 int EROFS ;
 int MS_RDONLY ;
 int bu_init (struct ubifs_info*) ;
 int dbg_gen (char*,...) ;
 int kfree (int *) ;
 int ubifs_assert (int) ;
 int ubifs_err (char*) ;
 int ubifs_msg (char*) ;
 int ubifs_parse_options (struct ubifs_info*,char*,int) ;
 int ubifs_remount_ro (struct ubifs_info*) ;
 int ubifs_remount_rw (struct ubifs_info*) ;

__attribute__((used)) static int ubifs_remount_fs(struct super_block *sb, int *flags, char *data)
{
 int err;
 struct ubifs_info *c = sb->s_fs_info;

 dbg_gen("old flags %#lx, new flags %#x", sb->s_flags, *flags);

 err = ubifs_parse_options(c, data, 1);
 if (err) {
  ubifs_err("invalid or unknown remount parameter");
  return err;
 }

 if ((sb->s_flags & MS_RDONLY) && !(*flags & MS_RDONLY)) {
  if (c->ro_media) {
   ubifs_msg("cannot re-mount due to prior errors");
   return -EROFS;
  }
  err = ubifs_remount_rw(c);
  if (err)
   return err;
 } else if (!(sb->s_flags & MS_RDONLY) && (*flags & MS_RDONLY)) {
  if (c->ro_media) {
   ubifs_msg("cannot re-mount due to prior errors");
   return -EROFS;
  }
  ubifs_remount_ro(c);
 }

 if (c->bulk_read == 1)
  bu_init(c);
 else {
  dbg_gen("disable bulk-read");
  kfree(c->bu.buf);
  c->bu.buf = ((void*)0);
 }

 ubifs_assert(c->lst.taken_empty_lebs > 0);
 return 0;
}
