
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ocfs2_refcount_rec {int dummy; } ;
struct TYPE_5__ {int rl_used; TYPE_2__* rl_recs; } ;
struct ocfs2_refcount_block {TYPE_1__ rf_records; } ;
struct TYPE_6__ {scalar_t__ r_refcount; int r_clusters; } ;


 int BUG_ON (int) ;
 int le16_add_cpu (int *,int) ;
 int le16_to_cpu (int ) ;
 int le32_add_cpu (int *,int ) ;
 int le32_to_cpu (int ) ;
 int memmove (TYPE_2__*,TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void ocfs2_rotate_refcount_rec_left(struct ocfs2_refcount_block *rb,
        int index)
{
 BUG_ON(rb->rf_records.rl_recs[index].r_refcount !=
        rb->rf_records.rl_recs[index+1].r_refcount);

 le32_add_cpu(&rb->rf_records.rl_recs[index].r_clusters,
       le32_to_cpu(rb->rf_records.rl_recs[index+1].r_clusters));

 if (index < le16_to_cpu(rb->rf_records.rl_used) - 2)
  memmove(&rb->rf_records.rl_recs[index + 1],
   &rb->rf_records.rl_recs[index + 2],
   sizeof(struct ocfs2_refcount_rec) *
   (le16_to_cpu(rb->rf_records.rl_used) - index - 2));

 memset(&rb->rf_records.rl_recs[le16_to_cpu(rb->rf_records.rl_used) - 1],
        0, sizeof(struct ocfs2_refcount_rec));
 le16_add_cpu(&rb->rf_records.rl_used, -1);
}
