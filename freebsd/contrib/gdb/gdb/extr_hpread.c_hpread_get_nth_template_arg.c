
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct objfile {int dummy; } ;
struct TYPE_2__ {struct type* type; } ;


 int FT_TEMPLATE_ARG ;
 TYPE_1__ TYPE_TEMPLATE_ARG (int *,int) ;
 int * current_template ;
 struct type* lookup_fundamental_type (struct objfile*,int ) ;

__attribute__((used)) static struct type *
hpread_get_nth_template_arg (struct objfile *objfile, int n)
{
  if (current_template != ((void*)0))
    return TYPE_TEMPLATE_ARG (current_template, n).type;
  else
    return lookup_fundamental_type (objfile, FT_TEMPLATE_ARG);
}
