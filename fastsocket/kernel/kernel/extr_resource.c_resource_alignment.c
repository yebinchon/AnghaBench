
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int flags; int start; } ;
typedef int resource_size_t ;




 int resource_size (struct resource*) ;

resource_size_t resource_alignment(struct resource *res)
{
 switch (res->flags & (129 | 128)) {
 case 129:
  return resource_size(res);
 case 128:
  return res->start;
 default:
  return 0;
 }
}
