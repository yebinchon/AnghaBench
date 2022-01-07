
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filename {struct filename* name; scalar_t__ separate; } ;


 int __putname (struct filename*) ;
 int kfree (struct filename*) ;

void final_putname(struct filename *name)
{
 if (name->separate) {
  __putname(name->name);
  kfree(name);
 } else {
  __putname(name);
 }
}
