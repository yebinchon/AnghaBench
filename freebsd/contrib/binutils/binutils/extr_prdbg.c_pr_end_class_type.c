
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 int pr_end_struct_type (void*) ;

__attribute__((used)) static bfd_boolean
pr_end_class_type (void *p)
{
  return pr_end_struct_type (p);
}
