
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_obj {scalar_t__ count; scalar_t__ next_input; char* next_input_name; int next_input_name_allocated; int * input_file; } ;
typedef int FILE ;


 int EINVAL ;
 int PEX_BINARY_OUTPUT ;
 scalar_t__ STDIN_FILE_NO ;
 int errno ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 char* temp_file (struct pex_obj*,int,char*) ;

FILE *
pex_input_file (struct pex_obj *obj, int flags, const char *in_name)
{
  char *name = (char *) in_name;
  FILE *f;



  if (obj->count != 0
      || (obj->next_input >= 0 && obj->next_input != STDIN_FILE_NO)
      || obj->next_input_name)
    {
      errno = EINVAL;
      return ((void*)0);
    }

  name = temp_file (obj, flags, name);
  if (! name)
    return ((void*)0);

  f = fopen (name, (flags & PEX_BINARY_OUTPUT) ? "wb" : "w");
  if (! f)
    {
      free (name);
      return ((void*)0);
    }

  obj->input_file = f;
  obj->next_input_name = name;
  obj->next_input_name_allocated = (name != in_name);

  return f;
}
