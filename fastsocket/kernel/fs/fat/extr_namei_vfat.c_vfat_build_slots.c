
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int u8 ;
struct timespec {int dummy; } ;
struct fat_mount_options {int utf8; int unicode_xlate; } ;
struct msdos_sb_info {int nls_disk; int nls_io; struct fat_mount_options options; } ;
struct msdos_dir_slot {int id; unsigned char alias_checksum; int name11_12; int name5_10; int name0_4; scalar_t__ start; scalar_t__ reserved; int attr; } ;
struct msdos_dir_entry {unsigned char lcase; scalar_t__ size; void* starthi; void* start; int ctime_cs; void* adate; void* cdate; void* date; void* ctime; void* time; int attr; int name; } ;
struct inode {int i_sb; } ;
typedef int loff_t ;
typedef void* __le16 ;


 int ATTR_ARCH ;
 int ATTR_DIR ;
 int ATTR_EXT ;
 int ENOMEM ;
 int MSDOS_NAME ;
 struct msdos_sb_info* MSDOS_SB (int ) ;
 int * __getname () ;
 int __putname (int *) ;
 void* cpu_to_le16 (int) ;
 unsigned char fat_checksum (unsigned char*) ;
 int fat_time_unix2fat (struct msdos_sb_info*,struct timespec*,void**,void**,int *) ;
 int fatwchar_to16 (int ,int *,int) ;
 int memcpy (int ,unsigned char*,int) ;
 int vfat_create_shortname (struct inode*,int ,int *,int,unsigned char*,unsigned char*) ;
 int vfat_is_used_badchars (int *,int) ;
 int xlate_to_uni (unsigned char const*,int,unsigned char*,int*,int*,int ,int ,int ) ;

__attribute__((used)) static int vfat_build_slots(struct inode *dir, const unsigned char *name,
       int len, int is_dir, int cluster,
       struct timespec *ts,
       struct msdos_dir_slot *slots, int *nr_slots)
{
 struct msdos_sb_info *sbi = MSDOS_SB(dir->i_sb);
 struct fat_mount_options *opts = &sbi->options;
 struct msdos_dir_slot *ps;
 struct msdos_dir_entry *de;
 unsigned char cksum, lcase;
 unsigned char msdos_name[MSDOS_NAME];
 wchar_t *uname;
 __le16 time, date;
 u8 time_cs;
 int err, ulen, usize, i;
 loff_t offset;

 *nr_slots = 0;

 uname = __getname();
 if (!uname)
  return -ENOMEM;

 err = xlate_to_uni(name, len, (unsigned char *)uname, &ulen, &usize,
      opts->unicode_xlate, opts->utf8, sbi->nls_io);
 if (err)
  goto out_free;

 err = vfat_is_used_badchars(uname, ulen);
 if (err)
  goto out_free;

 err = vfat_create_shortname(dir, sbi->nls_disk, uname, ulen,
        msdos_name, &lcase);
 if (err < 0)
  goto out_free;
 else if (err == 1) {
  de = (struct msdos_dir_entry *)slots;
  err = 0;
  goto shortname;
 }


 cksum = fat_checksum(msdos_name);

 *nr_slots = usize / 13;
 for (ps = slots, i = *nr_slots; i > 0; i--, ps++) {
  ps->id = i;
  ps->attr = ATTR_EXT;
  ps->reserved = 0;
  ps->alias_checksum = cksum;
  ps->start = 0;
  offset = (i - 1) * 13;
  fatwchar_to16(ps->name0_4, uname + offset, 5);
  fatwchar_to16(ps->name5_10, uname + offset + 5, 6);
  fatwchar_to16(ps->name11_12, uname + offset + 11, 2);
 }
 slots[0].id |= 0x40;
 de = (struct msdos_dir_entry *)ps;

shortname:

 (*nr_slots)++;
 memcpy(de->name, msdos_name, MSDOS_NAME);
 de->attr = is_dir ? ATTR_DIR : ATTR_ARCH;
 de->lcase = lcase;
 fat_time_unix2fat(sbi, ts, &time, &date, &time_cs);
 de->time = de->ctime = time;
 de->date = de->cdate = de->adate = date;
 de->ctime_cs = time_cs;
 de->start = cpu_to_le16(cluster);
 de->starthi = cpu_to_le16(cluster >> 16);
 de->size = 0;
out_free:
 __putname(uname);
 return err;
}
