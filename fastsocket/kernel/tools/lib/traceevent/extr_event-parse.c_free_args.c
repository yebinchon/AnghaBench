
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_arg {struct print_arg* next; } ;


 int free_arg (struct print_arg*) ;

__attribute__((used)) static void free_args(struct print_arg *args)
{
 struct print_arg *next;

 while (args) {
  next = args->next;

  free_arg(args);
  args = next;
 }
}
