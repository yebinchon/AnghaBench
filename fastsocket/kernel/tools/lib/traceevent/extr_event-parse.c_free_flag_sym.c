
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_flag_sym {struct print_flag_sym* str; struct print_flag_sym* value; struct print_flag_sym* next; } ;


 int free (struct print_flag_sym*) ;

__attribute__((used)) static void free_flag_sym(struct print_flag_sym *fsym)
{
 struct print_flag_sym *next;

 while (fsym) {
  next = fsym->next;
  free(fsym->value);
  free(fsym->str);
  free(fsym);
  fsym = next;
 }
}
