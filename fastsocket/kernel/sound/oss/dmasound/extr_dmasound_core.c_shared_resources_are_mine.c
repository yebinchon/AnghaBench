
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fmode_t ;


 int shared_resource_owner ;

__attribute__((used)) static int shared_resources_are_mine(fmode_t md)
{
 if (shared_resource_owner)
  return (shared_resource_owner & md) != 0;
 else {
  shared_resource_owner = md ;
  return 1 ;
 }
}
