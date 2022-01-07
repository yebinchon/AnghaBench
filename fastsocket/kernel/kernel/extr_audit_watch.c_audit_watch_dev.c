
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audit_watch {int dev; } ;
typedef int dev_t ;



dev_t audit_watch_dev(struct audit_watch *watch)
{
 return watch->dev;
}
