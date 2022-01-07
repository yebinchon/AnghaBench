
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfs_sb_t ;
typedef size_t xfs_sb_field_t ;
typedef int xfs_dsb_t ;
typedef scalar_t__ xfs_caddr_t ;
typedef int __uint64_t ;
typedef int __u64 ;
typedef int __u32 ;
typedef int __u16 ;
typedef int __int64_t ;
typedef int __be64 ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_2__ {int offset; int type; } ;


 int ASSERT (int) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int cpu_to_be64 (int ) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 scalar_t__ xfs_lowbit64 (int ) ;
 TYPE_1__* xfs_sb_info ;

void
xfs_sb_to_disk(
 xfs_dsb_t *to,
 xfs_sb_t *from,
 __int64_t fields)
{
 xfs_caddr_t to_ptr = (xfs_caddr_t)to;
 xfs_caddr_t from_ptr = (xfs_caddr_t)from;
 xfs_sb_field_t f;
 int first;
 int size;

 ASSERT(fields);
 if (!fields)
  return;

 while (fields) {
  f = (xfs_sb_field_t)xfs_lowbit64((__uint64_t)fields);
  first = xfs_sb_info[f].offset;
  size = xfs_sb_info[f + 1].offset - first;

  ASSERT(xfs_sb_info[f].type == 0 || xfs_sb_info[f].type == 1);

  if (size == 1 || xfs_sb_info[f].type == 1) {
   memcpy(to_ptr + first, from_ptr + first, size);
  } else {
   switch (size) {
   case 2:
    *(__be16 *)(to_ptr + first) =
     cpu_to_be16(*(__u16 *)(from_ptr + first));
    break;
   case 4:
    *(__be32 *)(to_ptr + first) =
     cpu_to_be32(*(__u32 *)(from_ptr + first));
    break;
   case 8:
    *(__be64 *)(to_ptr + first) =
     cpu_to_be64(*(__u64 *)(from_ptr + first));
    break;
   default:
    ASSERT(0);
   }
  }

  fields &= ~(1LL << f);
 }
}
