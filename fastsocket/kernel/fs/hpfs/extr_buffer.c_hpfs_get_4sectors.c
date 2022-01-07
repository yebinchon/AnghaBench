
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct quad_buffer_head {void* data; TYPE_1__** bh; } ;
struct TYPE_3__ {int b_data; } ;


 int GFP_NOFS ;
 int brelse (TYPE_1__*) ;
 int cond_resched () ;
 int hpfs_get_sector (struct super_block*,unsigned int,TYPE_1__**) ;
 void* kmalloc (int,int ) ;
 int memcpy (void*,int ,int) ;
 int printk (char*) ;

void *hpfs_get_4sectors(struct super_block *s, unsigned secno,
                          struct quad_buffer_head *qbh)
{
 cond_resched();

 if (secno & 3) {
  printk("HPFS: hpfs_get_4sectors: unaligned read\n");
  return ((void*)0);
 }


 if (!(qbh->data = kmalloc(2048, GFP_NOFS))) {
  printk("HPFS: hpfs_get_4sectors: out of memory\n");
  return ((void*)0);
 }
 if (!(hpfs_get_sector(s, secno, &qbh->bh[0]))) goto bail0;
 if (!(hpfs_get_sector(s, secno + 1, &qbh->bh[1]))) goto bail1;
 if (!(hpfs_get_sector(s, secno + 2, &qbh->bh[2]))) goto bail2;
 if (!(hpfs_get_sector(s, secno + 3, &qbh->bh[3]))) goto bail3;
 memcpy(qbh->data, qbh->bh[0]->b_data, 512);
 memcpy(qbh->data + 512, qbh->bh[1]->b_data, 512);
 memcpy(qbh->data + 2*512, qbh->bh[2]->b_data, 512);
 memcpy(qbh->data + 3*512, qbh->bh[3]->b_data, 512);
 return qbh->data;

 bail3: brelse(qbh->bh[2]);
 bail2: brelse(qbh->bh[1]);
 bail1: brelse(qbh->bh[0]);
 bail0:
 return ((void*)0);
}
