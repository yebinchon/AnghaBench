
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_class {int dummy; } ;


 int class_filter (struct lock_class*) ;

__attribute__((used)) static int verbose(struct lock_class *class)
{



 return 0;
}
