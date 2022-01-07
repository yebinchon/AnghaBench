
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int length; } ;
typedef TYPE_2__ xfs_dir2_data_unused_t ;
struct TYPE_8__ {TYPE_4__* bestfree; int magic; } ;
struct TYPE_10__ {TYPE_1__ hdr; } ;
typedef TYPE_3__ xfs_dir2_data_t ;
struct TYPE_11__ {int length; int offset; } ;
typedef TYPE_4__ xfs_dir2_data_free_t ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_BLOCK_MAGIC ;
 scalar_t__ XFS_DIR2_DATA_MAGIC ;
 scalar_t__ be16_to_cpu (int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int cpu_to_be16 (int) ;

xfs_dir2_data_free_t *
xfs_dir2_data_freeinsert(
 xfs_dir2_data_t *d,
 xfs_dir2_data_unused_t *dup,
 int *loghead)
{
 xfs_dir2_data_free_t *dfp;
 xfs_dir2_data_free_t new;





 dfp = d->hdr.bestfree;
 new.length = dup->length;
 new.offset = cpu_to_be16((char *)dup - (char *)d);



 if (be16_to_cpu(new.length) > be16_to_cpu(dfp[0].length)) {
  dfp[2] = dfp[1];
  dfp[1] = dfp[0];
  dfp[0] = new;
  *loghead = 1;
  return &dfp[0];
 }
 if (be16_to_cpu(new.length) > be16_to_cpu(dfp[1].length)) {
  dfp[2] = dfp[1];
  dfp[1] = new;
  *loghead = 1;
  return &dfp[1];
 }
 if (be16_to_cpu(new.length) > be16_to_cpu(dfp[2].length)) {
  dfp[2] = new;
  *loghead = 1;
  return &dfp[2];
 }
 return ((void*)0);
}
