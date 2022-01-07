
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_vma ;
struct TYPE_2__ {int type; int desc; int * string; int value; } ;


 size_t SAVE_STABS_COUNT ;
 int free (int *) ;
 TYPE_1__* saved_stabs ;
 size_t saved_stabs_index ;
 int * xstrdup (char const*) ;

__attribute__((used)) static void
save_stab (int type, int desc, bfd_vma value, const char *string)
{
  if (saved_stabs[saved_stabs_index].string != ((void*)0))
    free (saved_stabs[saved_stabs_index].string);
  saved_stabs[saved_stabs_index].type = type;
  saved_stabs[saved_stabs_index].desc = desc;
  saved_stabs[saved_stabs_index].value = value;
  saved_stabs[saved_stabs_index].string = xstrdup (string);
  saved_stabs_index = (saved_stabs_index + 1) % SAVE_STABS_COUNT;
}
