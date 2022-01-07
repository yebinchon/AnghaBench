
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gdb_client_data ;


 int EOF ;
 int ISATTY (scalar_t__) ;
 int fgetc (scalar_t__) ;
 int input_handler (char*) ;
 scalar_t__ instream ;
 int setbuf (scalar_t__,int *) ;
 scalar_t__ stdin ;
 int stub1 (char*) ;
 int stub2 (char*) ;
 int xfree (char*) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (char*,int) ;

void
gdb_readline2 (gdb_client_data client_data)
{
  int c;
  char *result;
  int input_index = 0;
  int result_size = 80;
  static int done_once = 0;







  if (!done_once && !ISATTY (instream))
    {
      setbuf (instream, ((void*)0));
      done_once = 1;
    }

  result = (char *) xmalloc (result_size);
  while (1)
    {


      c = fgetc (instream ? instream : stdin);

      if (c == EOF)
 {
   if (input_index > 0)



     break;
   xfree (result);
   (*input_handler) (0);
 }

      if (c == '\n')

 break;
      result[input_index++] = c;
      while (input_index >= result_size)
 {
   result_size *= 2;
   result = (char *) xrealloc (result, result_size);
 }
    }

  result[input_index++] = '\0';
  (*input_handler) (result);
}
