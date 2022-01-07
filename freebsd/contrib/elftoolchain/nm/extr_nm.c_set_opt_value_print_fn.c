
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum radix { ____Placeholder_radix } radix ;
struct TYPE_2__ {int * value_print_fn; int * size_print_fn; } ;





 int assert (int ) ;
 TYPE_1__ nm_opts ;
 int sym_size_dec_print ;
 int sym_size_hex_print ;
 int sym_size_oct_print ;
 int sym_value_dec_print ;
 int sym_value_hex_print ;
 int sym_value_oct_print ;

__attribute__((used)) static void
set_opt_value_print_fn(enum radix t)
{

 switch (t) {
 case 128:
  nm_opts.value_print_fn = &sym_value_oct_print;
  nm_opts.size_print_fn = &sym_size_oct_print;

  break;
 case 130:
  nm_opts.value_print_fn = &sym_value_dec_print;
  nm_opts.size_print_fn = &sym_size_dec_print;

  break;
 case 129:
 default :
  nm_opts.value_print_fn = &sym_value_hex_print;
  nm_opts.size_print_fn = &sym_size_hex_print;
 }

 assert(nm_opts.value_print_fn != ((void*)0) &&
     "nm_opts.value_print_fn is null");
}
