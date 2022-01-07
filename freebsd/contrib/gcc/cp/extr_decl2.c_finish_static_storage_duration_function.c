
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int expand_or_defer_fn (int ) ;
 int finish_compound_stmt (int ) ;
 int finish_function (int ) ;

__attribute__((used)) static void
finish_static_storage_duration_function (tree body)
{

  finish_compound_stmt (body);
  expand_or_defer_fn (finish_function (0));
}
