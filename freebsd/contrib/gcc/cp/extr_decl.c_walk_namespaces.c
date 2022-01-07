
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int walk_namespaces_fn ;


 int global_namespace ;
 int walk_namespaces_r (int ,int ,void*) ;

int
walk_namespaces (walk_namespaces_fn f, void* data)
{
  return walk_namespaces_r (global_namespace, f, data);
}
