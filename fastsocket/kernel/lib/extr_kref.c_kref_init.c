
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kref {int dummy; } ;


 int kref_set (struct kref*,int) ;

void kref_init(struct kref *kref)
{
 kref_set(kref, 1);
}
