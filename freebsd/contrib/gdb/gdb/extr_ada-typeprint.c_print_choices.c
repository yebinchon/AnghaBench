
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef int LONGEST ;


 char* TYPE_FIELD_NAME (struct type*,int) ;
 int ada_print_scalar (struct type*,int ,struct ui_file*) ;
 int ada_scan_number (char const*,int,int *,int*) ;
 int fprintf_filtered (struct ui_file*,char*) ;

__attribute__((used)) static void
print_choices (struct type *type, int field_num, struct ui_file *stream,
        struct type *val_type)
{
  int have_output;
  int p;
  const char *name = TYPE_FIELD_NAME (type, field_num);

  have_output = 0;


  if (name[0] == 'V')
    {
      if (!ada_scan_number (name, 1, ((void*)0), &p))
 goto Huh;
    }
  else
    p = 0;

  while (1)
    {
      switch (name[p])
 {
 default:
   return;
 case 'S':
 case 'R':
 case 'O':
   if (have_output)
     fprintf_filtered (stream, " | ");
   have_output = 1;
   break;
 }

      switch (name[p])
 {
 case 'S':
   {
     LONGEST W;
     if (!ada_scan_number (name, p + 1, &W, &p))
       goto Huh;
     ada_print_scalar (val_type, W, stream);
     break;
   }
 case 'R':
   {
     LONGEST L, U;
     if (!ada_scan_number (name, p + 1, &L, &p)
  || name[p] != 'T' || !ada_scan_number (name, p + 1, &U, &p))
       goto Huh;
     ada_print_scalar (val_type, L, stream);
     fprintf_filtered (stream, " .. ");
     ada_print_scalar (val_type, U, stream);
     break;
   }
 case 'O':
   fprintf_filtered (stream, "others");
   p += 1;
   break;
 }
    }

Huh:
  fprintf_filtered (stream, "??");

}
