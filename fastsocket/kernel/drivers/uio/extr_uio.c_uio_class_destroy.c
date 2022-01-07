
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kref; } ;


 int kref_put (int *,int ) ;
 int release_uio_class ;
 TYPE_1__* uio_class ;

__attribute__((used)) static void uio_class_destroy(void)
{
 if (uio_class)
  kref_put(&uio_class->kref, release_uio_class);
}
