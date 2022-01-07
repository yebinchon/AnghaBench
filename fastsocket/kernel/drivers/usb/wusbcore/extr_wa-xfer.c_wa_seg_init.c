
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kref; } ;
struct wa_seg {TYPE_1__ urb; } ;


 int kref_init (int *) ;

__attribute__((used)) static void wa_seg_init(struct wa_seg *seg)
{

 kref_init(&seg->urb.kref);
}
