
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_name_list {int fname; struct file_name_list* next; } ;
typedef int rtx ;
typedef int FILE ;



 int IS_ABSOLUTE_PATH (char const*) ;
 char* XSTR (int ,int ) ;
 scalar_t__ base_dir ;
 char* concat (scalar_t__,char const*,char const*,...) ;
 int errors ;
 int fclose (int *) ;
 struct file_name_list* first_dir_md_include ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int include_callback (char*) ;
 int message_with_line (int,char*,char const*) ;
 int process_rtx (int ,int) ;
 scalar_t__ read_rtx (int *,int *,int*) ;
 char const* read_rtx_filename ;
 int read_rtx_lineno ;
 char* xstrdup (char const*) ;

__attribute__((used)) static void
process_include (rtx desc, int lineno)
{
  const char *filename = XSTR (desc, 0);
  const char *old_filename;
  int old_lineno;
  char *pathname;
  FILE *input_file;


  if (! IS_ABSOLUTE_PATH (filename))
    {
      struct file_name_list *stackp;


      for (stackp = first_dir_md_include; stackp; stackp = stackp->next)
 {
   static const char sep[2] = { 128, '\0' };

   pathname = concat (stackp->fname, sep, filename, ((void*)0));
   input_file = fopen (pathname, "r");
   if (input_file != ((void*)0))
     goto success;
   free (pathname);
 }
    }

  if (base_dir)
    pathname = concat (base_dir, filename, ((void*)0));
  else
    pathname = xstrdup (filename);
  input_file = fopen (pathname, "r");
  if (input_file == ((void*)0))
    {
      free (pathname);
      message_with_line (lineno, "include file `%s' not found", filename);
      errors = 1;
      return;
    }
 success:




  old_filename = read_rtx_filename;
  old_lineno = read_rtx_lineno;
  read_rtx_filename = pathname;
  read_rtx_lineno = 1;

  if (include_callback)
    include_callback (pathname);


  while (read_rtx (input_file, &desc, &lineno))
    process_rtx (desc, lineno);




  read_rtx_filename = old_filename;
  read_rtx_lineno = old_lineno;

  fclose (input_file);
}
