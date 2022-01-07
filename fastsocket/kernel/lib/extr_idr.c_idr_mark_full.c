
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {scalar_t__ bitmap; } ;


 int IDR_BITS ;
 scalar_t__ IDR_FULL ;
 int IDR_MASK ;
 int __set_bit (int,scalar_t__*) ;

__attribute__((used)) static void idr_mark_full(struct idr_layer **pa, int id)
{
 struct idr_layer *p = pa[0];
 int l = 0;

 __set_bit(id & IDR_MASK, &p->bitmap);






 while (p->bitmap == IDR_FULL) {
  if (!(p = pa[++l]))
   break;
  id = id >> IDR_BITS;
  __set_bit((id & IDR_MASK), &p->bitmap);
 }
}
