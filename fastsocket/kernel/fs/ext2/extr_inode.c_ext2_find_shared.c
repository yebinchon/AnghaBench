
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct inode {int dummy; } ;
typedef scalar_t__ __le32 ;
struct TYPE_10__ {int i_meta_lock; } ;
struct TYPE_9__ {scalar_t__ b_data; } ;
struct TYPE_8__ {TYPE_6__* bh; scalar_t__* p; int key; } ;
typedef TYPE_1__ Indirect ;


 TYPE_7__* EXT2_I (struct inode*) ;
 scalar_t__ all_zeroes (scalar_t__*,scalar_t__*) ;
 int brelse (TYPE_6__*) ;
 TYPE_1__* ext2_get_branch (struct inode*,int,int*,TYPE_1__*,int*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static Indirect *ext2_find_shared(struct inode *inode,
    int depth,
    int offsets[4],
    Indirect chain[4],
    __le32 *top)
{
 Indirect *partial, *p;
 int k, err;

 *top = 0;
 for (k = depth; k > 1 && !offsets[k-1]; k--)
  ;
 partial = ext2_get_branch(inode, k, offsets, chain, &err);
 if (!partial)
  partial = chain + k-1;




 write_lock(&EXT2_I(inode)->i_meta_lock);
 if (!partial->key && *partial->p) {
  write_unlock(&EXT2_I(inode)->i_meta_lock);
  goto no_top;
 }
 for (p=partial; p>chain && all_zeroes((__le32*)p->bh->b_data,p->p); p--)
  ;






 if (p == chain + k - 1 && p > chain) {
  p->p--;
 } else {
  *top = *p->p;
  *p->p = 0;
 }
 write_unlock(&EXT2_I(inode)->i_meta_lock);

 while(partial > p)
 {
  brelse(partial->bh);
  partial--;
 }
no_top:
 return partial;
}
