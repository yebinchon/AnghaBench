
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISALNUM (char const) ;
 scalar_t__ do_spec_1 (char const*,int ,int *) ;
 char* eval_spec_function (char*,char*) ;
 int fatal (char*) ;
 int free (char*) ;
 int processing_spec_function ;
 char* save_string (char const*,int) ;

__attribute__((used)) static const char *
handle_spec_function (const char *p)
{
  char *func, *args;
  const char *endp, *funcval;
  int count;

  processing_spec_function++;


  for (endp = p; *endp != '\0'; endp++)
    {
      if (*endp == '(')
        break;

      if (!ISALNUM (*endp) && !(*endp == '-' || *endp == '_'))
 fatal ("malformed spec function name");
    }
  if (*endp != '(')
    fatal ("no arguments for spec function");
  func = save_string (p, endp - p);
  p = ++endp;


  for (count = 0; *endp != '\0'; endp++)
    {

      if (*endp == ')')
 {
   if (count == 0)
     break;
   count--;
 }
      else if (*endp == '(')
 count++;
    }

  if (*endp != ')')
    fatal ("malformed spec function arguments");
  args = save_string (p, endp - p);
  p = ++endp;



  funcval = eval_spec_function (func, args);
  if (funcval != ((void*)0) && do_spec_1 (funcval, 0, ((void*)0)) < 0)
    p = ((void*)0);

  free (func);
  free (args);

  processing_spec_function--;

  return p;
}
