
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_stuff {int ntmpl_args; int * previous_argument; scalar_t__* tmpl_argvec; scalar_t__ typevec_size; int * typevec; } ;


 int forget_types (struct work_stuff*) ;
 int free (char*) ;
 int string_delete (int *) ;

__attribute__((used)) static void
delete_non_B_K_work_stuff (struct work_stuff *work)
{


  forget_types (work);
  if (work -> typevec != ((void*)0))
    {
      free ((char *) work -> typevec);
      work -> typevec = ((void*)0);
      work -> typevec_size = 0;
    }
  if (work->tmpl_argvec)
    {
      int i;

      for (i = 0; i < work->ntmpl_args; i++)
 if (work->tmpl_argvec[i])
   free ((char*) work->tmpl_argvec[i]);

      free ((char*) work->tmpl_argvec);
      work->tmpl_argvec = ((void*)0);
    }
  if (work->previous_argument)
    {
      string_delete (work->previous_argument);
      free ((char*) work->previous_argument);
      work->previous_argument = ((void*)0);
    }
}
