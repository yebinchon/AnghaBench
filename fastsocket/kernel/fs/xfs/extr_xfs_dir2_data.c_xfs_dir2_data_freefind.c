
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ length; } ;
typedef TYPE_2__ xfs_dir2_data_unused_t ;
struct TYPE_8__ {TYPE_4__* bestfree; int magic; } ;
struct TYPE_10__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ xfs_dir2_data_t ;
struct TYPE_11__ {scalar_t__ offset; scalar_t__ length; } ;
typedef TYPE_4__ xfs_dir2_data_free_t ;
typedef scalar_t__ xfs_dir2_data_aoff_t ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ;
 size_t XFS_DIR2_DATA_FD_COUNT ;
 scalar_t__ XFS_DIR2_DATA_MAGIC ;
 scalar_t__ be16_to_cpu (scalar_t__) ;
 scalar_t__ be32_to_cpu (int ) ;

xfs_dir2_data_free_t *
xfs_dir2_data_freefind(
 xfs_dir2_data_t *d,
 xfs_dir2_data_unused_t *dup)
{
 xfs_dir2_data_free_t *dfp;
 xfs_dir2_data_aoff_t off;





 off = (xfs_dir2_data_aoff_t)((char *)dup - (char *)d);
 if (be16_to_cpu(dup->length) <
     be16_to_cpu(d->hdr.bestfree[XFS_DIR2_DATA_FD_COUNT - 1].length))
  return ((void*)0);



 for (dfp = &d->hdr.bestfree[0];
      dfp < &d->hdr.bestfree[XFS_DIR2_DATA_FD_COUNT];
      dfp++) {
  if (!dfp->offset)
   return ((void*)0);
  if (be16_to_cpu(dfp->offset) == off)
   return dfp;
 }



 return ((void*)0);
}
