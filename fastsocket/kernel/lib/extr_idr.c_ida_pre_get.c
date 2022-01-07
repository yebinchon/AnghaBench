
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida_bitmap {int dummy; } ;
struct ida {int free_bitmap; int idr; } ;
typedef int gfp_t ;


 int free_bitmap (struct ida*,struct ida_bitmap*) ;
 int idr_pre_get (int *,int ) ;
 struct ida_bitmap* kmalloc (int,int ) ;

int ida_pre_get(struct ida *ida, gfp_t gfp_mask)
{

 if (!idr_pre_get(&ida->idr, gfp_mask))
  return 0;


 if (!ida->free_bitmap) {
  struct ida_bitmap *bitmap;

  bitmap = kmalloc(sizeof(struct ida_bitmap), gfp_mask);
  if (!bitmap)
   return 0;

  free_bitmap(ida, bitmap);
 }

 return 1;
}
