
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dummy; } ;
struct device {int dummy; } ;


 int kfree (struct rfkill*) ;
 struct rfkill* to_rfkill (struct device*) ;

__attribute__((used)) static void rfkill_release(struct device *dev)
{
 struct rfkill *rfkill = to_rfkill(dev);

 kfree(rfkill);
}
