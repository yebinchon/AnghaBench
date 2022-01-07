
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ieee_handle {TYPE_3__* type_stack; } ;
typedef int bfd_boolean ;
struct TYPE_4__ {TYPE_2__* classdef; } ;
struct TYPE_6__ {TYPE_1__ type; } ;
struct TYPE_5__ {char const* method; } ;


 int TRUE ;
 int assert (int) ;

__attribute__((used)) static bfd_boolean
ieee_class_start_method (void *p, const char *name)
{
  struct ieee_handle *info = (struct ieee_handle *) p;

  assert (info->type_stack != ((void*)0)
   && info->type_stack->type.classdef != ((void*)0)
   && info->type_stack->type.classdef->method == ((void*)0));

  info->type_stack->type.classdef->method = name;

  return TRUE;
}
