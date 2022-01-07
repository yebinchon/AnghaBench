
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dummy {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_3__ {struct device* controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 TYPE_2__* dummy_to_hcd (struct dummy*) ;

__attribute__((used)) static inline struct device *dummy_dev (struct dummy *dum)
{
 return dummy_to_hcd(dum)->self.controller;
}
