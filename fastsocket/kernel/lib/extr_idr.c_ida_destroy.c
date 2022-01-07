
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ida {int free_bitmap; int idr; } ;


 int idr_destroy (int *) ;
 int kfree (int ) ;

void ida_destroy(struct ida *ida)
{
 idr_destroy(&ida->idr);
 kfree(ida->free_bitmap);
}
