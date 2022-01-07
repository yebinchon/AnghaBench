
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * bitmap ;


 int * BITMAP_GGC_ALLOC () ;
 int bitmap_set_bit (int *,unsigned int) ;

__attribute__((used)) static void
record_voperand_set (bitmap global, bitmap *local, unsigned int uid)
{



  if (*local == ((void*)0))
    *local = BITMAP_GGC_ALLOC ();


  bitmap_set_bit (*local, uid);
  bitmap_set_bit (global, uid);
}
