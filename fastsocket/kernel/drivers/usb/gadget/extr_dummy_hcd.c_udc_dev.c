
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;
struct dummy {TYPE_2__ gadget; } ;
struct device {int dummy; } ;



__attribute__((used)) static inline struct device *udc_dev (struct dummy *dum)
{
 return dum->gadget.dev.parent;
}
