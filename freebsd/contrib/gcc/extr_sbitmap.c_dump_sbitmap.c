
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* sbitmap ;
struct TYPE_3__ {unsigned int size; unsigned int n_bits; unsigned int* elms; } ;
typedef unsigned int SBITMAP_ELT_TYPE ;
typedef int FILE ;


 unsigned int SBITMAP_ELT_BITS ;
 int fprintf (int *,char*,...) ;

void
dump_sbitmap (FILE *file, sbitmap bmap)
{
  unsigned int i, n, j;
  unsigned int set_size = bmap->size;
  unsigned int total_bits = bmap->n_bits;

  fprintf (file, "  ");
  for (i = n = 0; i < set_size && n < total_bits; i++)
    for (j = 0; j < SBITMAP_ELT_BITS && n < total_bits; j++, n++)
      {
 if (n != 0 && n % 10 == 0)
   fprintf (file, " ");

 fprintf (file, "%d",
   (bmap->elms[i] & ((SBITMAP_ELT_TYPE) 1 << j)) != 0);
      }

  fprintf (file, "\n");
}
