
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 struct resource* __request_resource (struct resource*,struct resource*) ;
 int resource_lock ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

struct resource *request_resource_conflict(struct resource *root, struct resource *new)
{
 struct resource *conflict;

 write_lock(&resource_lock);
 conflict = __request_resource(root, new);
 write_unlock(&resource_lock);
 return conflict;
}
