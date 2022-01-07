
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_file {int dummy; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {int fp0; } ;


 double REGISTER_NAME (int) ;
 scalar_t__ alloca (int) ;
 int builtin_type_uint32 ;
 int builtin_type_uint64 ;
 int current_gdbarch ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 scalar_t__ mips2_fp_compat () ;
 int mips_double_register_type () ;
 int mips_float_register_type () ;
 int mips_read_fp_register_double (struct frame_info*,int,char*) ;
 int mips_read_fp_register_single (struct frame_info*,int,char*) ;
 TYPE_1__* mips_regnum (int ) ;
 int print_scalar_formatted (char*,int ,char,char,struct ui_file*) ;
 int register_size (int ,int) ;
 scalar_t__ strlen (double) ;
 double unpack_double (int ,char*,int*) ;

__attribute__((used)) static void
mips_print_fp_register (struct ui_file *file, struct frame_info *frame,
   int regnum)
{
  char *raw_buffer;
  double doub, flt1;
  int inv1, inv2;

  raw_buffer =
    (char *) alloca (2 *
       register_size (current_gdbarch,
        mips_regnum (current_gdbarch)->fp0));

  fprintf_filtered (file, "%s:", REGISTER_NAME (regnum));
  fprintf_filtered (file, "%*s", 4 - (int) strlen (REGISTER_NAME (regnum)),
      "");

  if (register_size (current_gdbarch, regnum) == 4 || mips2_fp_compat ())
    {


      mips_read_fp_register_single (frame, regnum, raw_buffer);
      flt1 = unpack_double (mips_float_register_type (), raw_buffer, &inv1);

      print_scalar_formatted (raw_buffer, builtin_type_uint32, 'x', 'w',
         file);

      fprintf_filtered (file, " flt: ");
      if (inv1)
 fprintf_filtered (file, " <invalid float> ");
      else
 fprintf_filtered (file, "%-17.9g", flt1);

      if (regnum % 2 == 0)
 {
   mips_read_fp_register_double (frame, regnum, raw_buffer);
   doub = unpack_double (mips_double_register_type (), raw_buffer,
    &inv2);

   fprintf_filtered (file, " dbl: ");
   if (inv2)
     fprintf_filtered (file, "<invalid double>");
   else
     fprintf_filtered (file, "%-24.17g", doub);
 }
    }
  else
    {

      mips_read_fp_register_single (frame, regnum, raw_buffer);
      flt1 = unpack_double (mips_float_register_type (), raw_buffer, &inv1);

      mips_read_fp_register_double (frame, regnum, raw_buffer);
      doub = unpack_double (mips_double_register_type (), raw_buffer, &inv2);


      print_scalar_formatted (raw_buffer, builtin_type_uint64, 'x', 'g',
         file);

      fprintf_filtered (file, " flt: ");
      if (inv1)
 fprintf_filtered (file, "<invalid float>");
      else
 fprintf_filtered (file, "%-17.9g", flt1);

      fprintf_filtered (file, " dbl: ");
      if (inv2)
 fprintf_filtered (file, "<invalid double>");
      else
 fprintf_filtered (file, "%-24.17g", doub);
    }
}
