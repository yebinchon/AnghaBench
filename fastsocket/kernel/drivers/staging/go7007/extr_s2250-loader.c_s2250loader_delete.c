
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct kref {int dummy; } ;
typedef TYPE_1__* pdevice_extension_t ;
struct TYPE_4__ {size_t minor; } ;


 int kfree (TYPE_1__*) ;
 int ** s2250_dev_table ;
 TYPE_1__* to_s2250loader_dev_common (struct kref*) ;

__attribute__((used)) static void s2250loader_delete(struct kref *kref)
{
 pdevice_extension_t s = to_s2250loader_dev_common(kref);
 s2250_dev_table[s->minor] = ((void*)0);
 kfree(s);
}
