
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PTR ;


 int malloc (size_t) ;
 int realloc (int ,size_t) ;
 int xmalloc_failed (size_t) ;

PTR
xrealloc (PTR oldmem, size_t size)
{
  PTR newmem;

  if (size == 0)
    size = 1;
  if (!oldmem)
    newmem = malloc (size);
  else
    newmem = realloc (oldmem, size);
  if (!newmem)
    xmalloc_failed (size);

  return (newmem);
}
