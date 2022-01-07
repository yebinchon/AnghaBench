
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct cleanup {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int TYPE_LENGTH (int ) ;
 scalar_t__ VALUE_ADDRESS (struct value*) ;
 int VALUE_CONTENTS (struct value*) ;
 scalar_t__ VALUE_LVAL (struct value*) ;
 int VALUE_TYPE (struct value*) ;
 int do_cleanups (struct cleanup*) ;
 int dump_bfd_file (char*,char*,char*,scalar_t__,int ,int ) ;
 int dump_binary_file (char*,char*,int ,int ) ;
 int error (char*,...) ;
 struct cleanup* make_cleanup (int ,int *) ;
 int null_cleanup ;
 struct value* parse_and_eval (char*) ;
 char* scan_filename_with_cleanup (char**,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int warning (char*) ;

__attribute__((used)) static void
dump_value_to_file (char *cmd, char *mode, char *file_format)
{
  struct cleanup *old_cleanups = make_cleanup (null_cleanup, ((void*)0));
  struct value *val;
  char *filename;


  filename = scan_filename_with_cleanup (&cmd, ((void*)0));


  if (cmd == ((void*)0) || *cmd == '\0')
    error ("No value to %s.", *mode == 'a' ? "append" : "dump");
  val = parse_and_eval (cmd);
  if (val == ((void*)0))
    error ("Invalid expression.");


  if (file_format == ((void*)0) || strcmp (file_format, "binary") == 0)
    {
      dump_binary_file (filename, mode, VALUE_CONTENTS (val),
   TYPE_LENGTH (VALUE_TYPE (val)));
    }
  else
    {
      CORE_ADDR vaddr;

      if (VALUE_LVAL (val))
 {
   vaddr = VALUE_ADDRESS (val);
 }
      else
 {
   vaddr = 0;
   warning ("value is not an lval: address assumed to be zero");
 }

      dump_bfd_file (filename, mode, file_format, vaddr,
       VALUE_CONTENTS (val),
       TYPE_LENGTH (VALUE_TYPE (val)));
    }

  do_cleanups (old_cleanups);
}
