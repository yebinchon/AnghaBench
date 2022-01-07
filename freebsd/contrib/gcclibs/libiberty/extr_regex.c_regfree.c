
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * translate; scalar_t__ fastmap_accurate; int * fastmap; scalar_t__ used; scalar_t__ allocated; int * buffer; } ;
typedef TYPE_1__ regex_t ;


 int free (int *) ;

void
regfree (regex_t *preg)
{
  if (preg->buffer != ((void*)0))
    free (preg->buffer);
  preg->buffer = ((void*)0);

  preg->allocated = 0;
  preg->used = 0;

  if (preg->fastmap != ((void*)0))
    free (preg->fastmap);
  preg->fastmap = ((void*)0);
  preg->fastmap_accurate = 0;

  if (preg->translate != ((void*)0))
    free (preg->translate);
  preg->translate = ((void*)0);
}
