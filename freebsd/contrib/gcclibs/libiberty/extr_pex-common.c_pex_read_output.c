
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pex_obj {int next_input; int * read_output; TYPE_1__* funcs; int * next_input_name; scalar_t__ next_input_name_allocated; } ;
struct TYPE_2__ {int * (* fdopenr ) (struct pex_obj*,int,int) ;} ;
typedef int FILE ;


 int STDIN_FILE_NO ;
 int errno ;
 int * fopen (int *,char*) ;
 int free (int *) ;
 int pex_get_status_and_time (struct pex_obj*,int ,char const**,int*) ;
 int * stub1 (struct pex_obj*,int,int) ;

FILE *
pex_read_output (struct pex_obj *obj, int binary)
{
  if (obj->next_input_name != ((void*)0))
    {
      const char *errmsg;
      int err;



      if (!pex_get_status_and_time (obj, 0, &errmsg, &err))
 {
   errno = err;
   return ((void*)0);
 }

      obj->read_output = fopen (obj->next_input_name, binary ? "rb" : "r");

      if (obj->next_input_name_allocated)
 {
   free (obj->next_input_name);
   obj->next_input_name_allocated = 0;
 }
      obj->next_input_name = ((void*)0);
    }
  else
    {
      int o;

      o = obj->next_input;
      if (o < 0 || o == STDIN_FILE_NO)
 return ((void*)0);
      obj->read_output = obj->funcs->fdopenr (obj, o, binary);
      obj->next_input = -1;
    }

  return obj->read_output;
}
