
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct quad_buffer_head {TYPE_1__** bh; scalar_t__ data; } ;
struct TYPE_2__ {int b_data; } ;


 int PRINTK (char*) ;
 int mark_buffer_dirty (TYPE_1__*) ;
 int memcpy (int ,scalar_t__,int) ;

void hpfs_mark_4buffers_dirty(struct quad_buffer_head *qbh)
{
 PRINTK(("hpfs_mark_4buffers_dirty\n"));
 memcpy(qbh->bh[0]->b_data, qbh->data, 512);
 memcpy(qbh->bh[1]->b_data, qbh->data + 512, 512);
 memcpy(qbh->bh[2]->b_data, qbh->data + 2 * 512, 512);
 memcpy(qbh->bh[3]->b_data, qbh->data + 3 * 512, 512);
 mark_buffer_dirty(qbh->bh[0]);
 mark_buffer_dirty(qbh->bh[1]);
 mark_buffer_dirty(qbh->bh[2]);
 mark_buffer_dirty(qbh->bh[3]);
}
