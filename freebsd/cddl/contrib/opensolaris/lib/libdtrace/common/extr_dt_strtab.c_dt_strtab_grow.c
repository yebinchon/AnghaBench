
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** str_bufs; int str_nbufs; char* str_ptr; int str_bufsz; } ;
typedef TYPE_1__ dt_strtab_t ;


 int free (char*) ;
 char* malloc (int ) ;
 char** realloc (char**,int) ;

__attribute__((used)) static int
dt_strtab_grow(dt_strtab_t *sp)
{
 char *ptr, **bufs;

 if ((ptr = malloc(sp->str_bufsz)) == ((void*)0))
  return (-1);

 bufs = realloc(sp->str_bufs, (sp->str_nbufs + 1) * sizeof (char *));

 if (bufs == ((void*)0)) {
  free(ptr);
  return (-1);
 }

 sp->str_nbufs++;
 sp->str_bufs = bufs;
 sp->str_ptr = ptr;
 sp->str_bufs[sp->str_nbufs - 1] = sp->str_ptr;

 return (0);
}
