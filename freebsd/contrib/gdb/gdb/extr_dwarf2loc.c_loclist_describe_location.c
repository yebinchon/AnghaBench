
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct symbol {int dummy; } ;


 int fprintf_filtered (struct ui_file*,char*) ;

__attribute__((used)) static int
loclist_describe_location (struct symbol *symbol, struct ui_file *stream)
{

  fprintf_filtered (stream, "a variable with multiple locations");
  return 1;
}
