
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int vblk_size; int vblk_offset; int last_vblk_seq; } ;
struct ldmdb {TYPE_1__ vm; } ;
struct block_device {int dummy; } ;
typedef int Sector ;


 int BUG_ON (int) ;
 int LIST_HEAD (int ) ;
 scalar_t__ MAGIC_VBLK ;
 scalar_t__ OFF_VMDB ;
 int frags ;
 int get_unaligned_be16 (int *) ;
 scalar_t__ get_unaligned_be32 (int *) ;
 int ldm_crit (char*) ;
 int ldm_error (char*) ;
 int ldm_frag_add (int *,int,int *) ;
 int ldm_frag_commit (int *,struct ldmdb*) ;
 int ldm_frag_free (int *) ;
 int ldm_ldmdb_add (int *,int,struct ldmdb*) ;
 int put_dev_sector (int ) ;
 int * read_dev_sector (struct block_device*,scalar_t__,int *) ;

__attribute__((used)) static bool ldm_get_vblks (struct block_device *bdev, unsigned long base,
      struct ldmdb *ldb)
{
 int size, perbuf, skip, finish, s, v, recs;
 u8 *data = ((void*)0);
 Sector sect;
 bool result = 0;
 LIST_HEAD (frags);

 BUG_ON (!bdev || !ldb);

 size = ldb->vm.vblk_size;
 perbuf = 512 / size;
 skip = ldb->vm.vblk_offset >> 9;
 finish = (size * ldb->vm.last_vblk_seq) >> 9;

 for (s = skip; s < finish; s++) {
  data = read_dev_sector (bdev, base + OFF_VMDB + s, &sect);
  if (!data) {
   ldm_crit ("Disk read failed.");
   goto out;
  }

  for (v = 0; v < perbuf; v++, data+=size) {
   if (MAGIC_VBLK != get_unaligned_be32(data)) {
    ldm_error ("Expected to find a VBLK.");
    goto out;
   }

   recs = get_unaligned_be16(data + 0x0E);
   if (recs == 1) {
    if (!ldm_ldmdb_add (data, size, ldb))
     goto out;
   } else if (recs > 1) {
    if (!ldm_frag_add (data, size, &frags))
     goto out;
   }

  }
  put_dev_sector (sect);
  data = ((void*)0);
 }

 result = ldm_frag_commit (&frags, ldb);
out:
 if (data)
  put_dev_sector (sect);
 ldm_frag_free (&frags);

 return result;
}
