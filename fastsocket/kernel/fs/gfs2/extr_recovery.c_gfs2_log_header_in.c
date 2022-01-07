
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_log_header_host {void* lh_hash; void* lh_blkno; void* lh_tail; void* lh_flags; int lh_sequence; } ;
struct TYPE_2__ {scalar_t__ mh_magic; scalar_t__ mh_type; } ;
struct gfs2_log_header {int lh_hash; int lh_blkno; int lh_tail; int lh_flags; int lh_sequence; TYPE_1__ lh_header; } ;


 int GFS2_MAGIC ;
 int GFS2_METATYPE_LH ;
 void* be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 scalar_t__ cpu_to_be32 (int ) ;

__attribute__((used)) static int gfs2_log_header_in(struct gfs2_log_header_host *lh, const void *buf)
{
 const struct gfs2_log_header *str = buf;

 if (str->lh_header.mh_magic != cpu_to_be32(GFS2_MAGIC) ||
     str->lh_header.mh_type != cpu_to_be32(GFS2_METATYPE_LH))
  return 1;

 lh->lh_sequence = be64_to_cpu(str->lh_sequence);
 lh->lh_flags = be32_to_cpu(str->lh_flags);
 lh->lh_tail = be32_to_cpu(str->lh_tail);
 lh->lh_blkno = be32_to_cpu(str->lh_blkno);
 lh->lh_hash = be32_to_cpu(str->lh_hash);
 return 0;
}
