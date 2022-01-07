
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 int QUIT ;
 int TYPE_FIELD_BITPOS (struct type*,unsigned int) ;
 char* TYPE_FIELD_NAME (struct type*,unsigned int) ;
 unsigned int TYPE_NFIELDS (struct type*) ;
 unsigned int TYPE_N_BASECLASSES (struct type*) ;
 int builtin_type_int ;
 int c_type_print_base (struct type*,struct ui_file*,int ,int ) ;
 int fprintf_filtered (struct ui_file*,char*,...) ;
 int fputs_filtered (char*,struct ui_file*) ;
 char* type_name_no_tag (struct type*) ;
 int unpack_long (int ,char*) ;

void
cp_print_class_member (char *valaddr, struct type *domain,
         struct ui_file *stream, char *prefix)
{




  int extra = 0;
  int bits = 0;
  unsigned int i;
  unsigned len = TYPE_NFIELDS (domain);
  LONGEST val = unpack_long (builtin_type_int, valaddr) << 3;
  for (i = TYPE_N_BASECLASSES (domain); i < len; i++)
    {
      int bitpos = TYPE_FIELD_BITPOS (domain, i);
      QUIT;
      if (val == bitpos)
 break;
      if (val < bitpos && i != 0)
 {

   i -= 1;
   extra = (val - TYPE_FIELD_BITPOS (domain, i));
   if (extra & 0x7)
     bits = 1;
   else
     extra >>= 3;
   break;
 }
    }
  if (i < len)
    {
      char *name;
      fputs_filtered (prefix, stream);
      name = type_name_no_tag (domain);
      if (name)
 fputs_filtered (name, stream);
      else
 c_type_print_base (domain, stream, 0, 0);
      fprintf_filtered (stream, "::");
      fputs_filtered (TYPE_FIELD_NAME (domain, i), stream);
      if (extra)
 fprintf_filtered (stream, " + %d bytes", extra);
      if (bits)
 fprintf_filtered (stream, " (offset in bits)");
    }
  else
    fprintf_filtered (stream, "%ld", (long) (val >> 3));
}
