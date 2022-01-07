
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int EBUSY ;
 struct resource* insert_resource_conflict (struct resource*,struct resource*) ;

int insert_resource(struct resource *parent, struct resource *new)
{
 struct resource *conflict;

 conflict = insert_resource_conflict(parent, new);
 return conflict ? -EBUSY : 0;
}
