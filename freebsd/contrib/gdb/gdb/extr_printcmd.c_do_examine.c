
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct format_data {char format; char size; int count; } ;
typedef int asection ;
typedef int CORE_ADDR ;


 int QUIT ;
 struct type* examine_b_type ;
 struct type* examine_g_type ;
 struct type* examine_h_type ;
 struct type* examine_i_type ;
 struct type* examine_w_type ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int last_examine_address ;
 scalar_t__ last_examine_value ;
 int next_address ;
 int * next_section ;
 int print_address (int ,int ) ;
 int print_formatted (scalar_t__,char,char,int ) ;
 int printf_filtered (char*) ;
 int release_value (scalar_t__) ;
 scalar_t__ value_at_lazy (struct type*,int ,int *) ;
 int value_free (scalar_t__) ;

__attribute__((used)) static void
do_examine (struct format_data fmt, CORE_ADDR addr, asection *sect)
{
  char format = 0;
  char size;
  int count = 1;
  struct type *val_type = ((void*)0);
  int i;
  int maxelts;

  format = fmt.format;
  size = fmt.size;
  count = fmt.count;
  next_address = addr;
  next_section = sect;



  if (format == 's' || format == 'i')
    size = 'b';

  if (format == 'i')
    val_type = examine_i_type;
  else if (size == 'b')
    val_type = examine_b_type;
  else if (size == 'h')
    val_type = examine_h_type;
  else if (size == 'w')
    val_type = examine_w_type;
  else if (size == 'g')
    val_type = examine_g_type;

  maxelts = 8;
  if (size == 'w')
    maxelts = 4;
  if (size == 'g')
    maxelts = 2;
  if (format == 's' || format == 'i')
    maxelts = 1;




  while (count > 0)
    {
      QUIT;
      print_address (next_address, gdb_stdout);
      printf_filtered (":");
      for (i = maxelts;
    i > 0 && count > 0;
    i--, count--)
 {
   printf_filtered ("\t");


   last_examine_address = next_address;

   if (last_examine_value)
     value_free (last_examine_value);
   last_examine_value = value_at_lazy (val_type, next_address, sect);

   if (last_examine_value)
     release_value (last_examine_value);

   print_formatted (last_examine_value, format, size, gdb_stdout);
 }
      printf_filtered ("\n");
      gdb_flush (gdb_stdout);
    }
}
