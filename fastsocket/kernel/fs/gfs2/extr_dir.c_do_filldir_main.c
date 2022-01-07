
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef unsigned int u32 ;
struct gfs2_inode {int dummy; } ;
struct TYPE_2__ {int no_addr; } ;
struct gfs2_dirent {int de_type; TYPE_1__ de_inum; int de_name_len; int de_hash; } ;
typedef int (* filldir_t ) (void*,char const*,int ,scalar_t__,int ,int ) ;


 int be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int compare_dents ;
 scalar_t__ gfs2_disk_hash2offset (scalar_t__) ;
 int sort (struct gfs2_dirent const**,unsigned int,int,int ,int *) ;

__attribute__((used)) static int do_filldir_main(struct gfs2_inode *dip, u64 *offset,
      void *opaque, filldir_t filldir,
      const struct gfs2_dirent **darr, u32 entries,
      int *copied)
{
 const struct gfs2_dirent *dent, *dent_next;
 u64 off, off_next;
 unsigned int x, y;
 int run = 0;
 int error = 0;

 sort(darr, entries, sizeof(struct gfs2_dirent *), compare_dents, ((void*)0));

 dent_next = darr[0];
 off_next = be32_to_cpu(dent_next->de_hash);
 off_next = gfs2_disk_hash2offset(off_next);

 for (x = 0, y = 1; x < entries; x++, y++) {
  dent = dent_next;
  off = off_next;

  if (y < entries) {
   dent_next = darr[y];
   off_next = be32_to_cpu(dent_next->de_hash);
   off_next = gfs2_disk_hash2offset(off_next);

   if (off < *offset)
    continue;
   *offset = off;

   if (off_next == off) {
    if (*copied && !run)
     return 1;
    run = 1;
   } else
    run = 0;
  } else {
   if (off < *offset)
    continue;
   *offset = off;
  }

  error = filldir(opaque, (const char *)(dent + 1),
    be16_to_cpu(dent->de_name_len),
    off, be64_to_cpu(dent->de_inum.no_addr),
    be16_to_cpu(dent->de_type));
  if (error)
   return 1;

  *copied = 1;
 }





 (*offset)++;

 return 0;
}
