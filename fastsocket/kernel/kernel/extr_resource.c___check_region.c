
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
typedef int resource_size_t ;


 int EBUSY ;
 struct resource* __request_region (struct resource*,int ,int ,char*,int ) ;
 int kfree (struct resource*) ;
 int release_resource (struct resource*) ;

int __check_region(struct resource *parent, resource_size_t start,
   resource_size_t n)
{
 struct resource * res;

 res = __request_region(parent, start, n, "check-region", 0);
 if (!res)
  return -EBUSY;

 release_resource(res);
 kfree(res);
 return 0;
}
