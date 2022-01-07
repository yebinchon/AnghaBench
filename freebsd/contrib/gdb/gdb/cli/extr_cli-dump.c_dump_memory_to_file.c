
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int dummy; } ;
typedef scalar_t__ ULONGEST ;
typedef scalar_t__ CORE_ADDR ;


 int do_cleanups (struct cleanup*) ;
 int dump_bfd_file (char*,char*,char*,scalar_t__,void*,scalar_t__) ;
 int dump_binary_file (char*,char*,void*,scalar_t__) ;
 int error (char*) ;
 struct cleanup* make_cleanup (int ,void*) ;
 int null_cleanup ;
 scalar_t__ parse_and_eval_address (char*) ;
 char* scan_expression_with_cleanup (char**,int *) ;
 char* scan_filename_with_cleanup (char**,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int target_read_memory (scalar_t__,void*,scalar_t__) ;
 int xfree ;
 void* xmalloc (scalar_t__) ;

__attribute__((used)) static void
dump_memory_to_file (char *cmd, char *mode, char *file_format)
{
  struct cleanup *old_cleanups = make_cleanup (null_cleanup, ((void*)0));
  CORE_ADDR lo;
  CORE_ADDR hi;
  ULONGEST count;
  char *filename;
  void *buf;
  char *lo_exp;
  char *hi_exp;
  int len;


  filename = scan_filename_with_cleanup (&cmd, ((void*)0));


  if (cmd == ((void*)0) || *cmd == '\0')
    error ("Missing start address.");
  lo_exp = scan_expression_with_cleanup (&cmd, ((void*)0));


  if (cmd == ((void*)0) || *cmd == '\0')
    error ("Missing stop address.");
  hi_exp = cmd;

  lo = parse_and_eval_address (lo_exp);
  hi = parse_and_eval_address (hi_exp);
  if (hi <= lo)
    error ("Invalid memory address range (start >= end).");
  count = hi - lo;



  buf = xmalloc (count);
  make_cleanup (xfree, buf);
  target_read_memory (lo, buf, count);


  if (file_format == ((void*)0) || strcmp (file_format, "binary") == 0)
    {
      dump_binary_file (filename, mode, buf, count);
    }
  else
    {
      dump_bfd_file (filename, mode, file_format, lo, buf, count);
    }

  do_cleanups (old_cleanups);
}
