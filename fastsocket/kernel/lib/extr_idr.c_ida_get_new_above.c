
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct idr_layer {int count; scalar_t__* ary; } ;
struct ida_bitmap {int nr_busy; int bitmap; } ;
struct TYPE_3__ {scalar_t__ id_free_cnt; int lock; } ;
struct ida {TYPE_1__ idr; struct ida_bitmap* free_bitmap; } ;


 int EAGAIN ;
 int ENOSPC ;
 int IDA_BITMAP_BITS ;
 int IDR_MASK ;
 int MAX_ID_BIT ;
 int MAX_LEVEL ;
 int __set_bit (int,int ) ;
 int _idr_rc_to_errno (int) ;
 int find_next_zero_bit (int ,int,int) ;
 struct idr_layer* get_from_free_list (TYPE_1__*) ;
 int idr_get_empty_slot (TYPE_1__*,int,struct idr_layer**) ;
 int idr_layer_cache ;
 int idr_mark_full (struct idr_layer**,int) ;
 int kmem_cache_free (int ,struct idr_layer*) ;
 int memset (struct ida_bitmap*,int ,int) ;
 int rcu_assign_pointer (scalar_t__,void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int ida_get_new_above(struct ida *ida, int starting_id, int *p_id)
{
 struct idr_layer *pa[MAX_LEVEL];
 struct ida_bitmap *bitmap;
 unsigned long flags;
 int idr_id = starting_id / IDA_BITMAP_BITS;
 int offset = starting_id % IDA_BITMAP_BITS;
 int t, id;

 restart:

 t = idr_get_empty_slot(&ida->idr, idr_id, pa);
 if (t < 0)
  return _idr_rc_to_errno(t);

 if (t * IDA_BITMAP_BITS >= MAX_ID_BIT)
  return -ENOSPC;

 if (t != idr_id)
  offset = 0;
 idr_id = t;


 bitmap = (void *)pa[0]->ary[idr_id & IDR_MASK];
 if (!bitmap) {
  spin_lock_irqsave(&ida->idr.lock, flags);
  bitmap = ida->free_bitmap;
  ida->free_bitmap = ((void*)0);
  spin_unlock_irqrestore(&ida->idr.lock, flags);

  if (!bitmap)
   return -EAGAIN;

  memset(bitmap, 0, sizeof(struct ida_bitmap));
  rcu_assign_pointer(pa[0]->ary[idr_id & IDR_MASK],
    (void *)bitmap);
  pa[0]->count++;
 }


 t = find_next_zero_bit(bitmap->bitmap, IDA_BITMAP_BITS, offset);
 if (t == IDA_BITMAP_BITS) {

  idr_id++;
  offset = 0;
  goto restart;
 }

 id = idr_id * IDA_BITMAP_BITS + t;
 if (id >= MAX_ID_BIT)
  return -ENOSPC;

 __set_bit(t, bitmap->bitmap);
 if (++bitmap->nr_busy == IDA_BITMAP_BITS)
  idr_mark_full(pa, idr_id);

 *p_id = id;






 if (ida->idr.id_free_cnt || ida->free_bitmap) {
  struct idr_layer *p = get_from_free_list(&ida->idr);
  if (p)
   kmem_cache_free(idr_layer_cache, p);
 }

 return 0;
}
