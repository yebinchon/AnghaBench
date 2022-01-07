
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {size_t tag; int string; } ;
typedef int FILE ;


 size_t SYM_NORMAL ;
 int fputs (int ,int *) ;
 int putc (char,int *) ;
 char** symbol_type_name ;

__attribute__((used)) static void print_node(FILE * f, struct string_list *list)
{
 if (list->tag != SYM_NORMAL) {
  putc(symbol_type_name[list->tag][0], f);
  putc('#', f);
 }
 fputs(list->string, f);
}
