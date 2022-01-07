
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_type {int filter; } ;


 int free_arg (int ) ;

__attribute__((used)) static void free_filter_type(struct filter_type *filter_type)
{
 free_arg(filter_type->filter);
}
