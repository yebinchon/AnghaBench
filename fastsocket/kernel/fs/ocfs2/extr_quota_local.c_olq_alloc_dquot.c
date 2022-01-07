
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_local_disk_chunk {int dqc_free; int dqc_bitmap; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int le32_add_cpu (int *,int) ;
 int ocfs2_set_bit (int,int ) ;

__attribute__((used)) static void olq_alloc_dquot(struct buffer_head *bh, void *private)
{
 int *offset = private;
 struct ocfs2_local_disk_chunk *dchunk;

 dchunk = (struct ocfs2_local_disk_chunk *)bh->b_data;
 ocfs2_set_bit(*offset, dchunk->dqc_bitmap);
 le32_add_cpu(&dchunk->dqc_free, -1);
}
