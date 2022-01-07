
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quad_buffer_head {int data; int * bh; } ;


 int brelse (int ) ;
 int kfree (int ) ;

void hpfs_brelse4(struct quad_buffer_head *qbh)
{
 brelse(qbh->bh[3]);
 brelse(qbh->bh[2]);
 brelse(qbh->bh[1]);
 brelse(qbh->bh[0]);
 kfree(qbh->data);
}
