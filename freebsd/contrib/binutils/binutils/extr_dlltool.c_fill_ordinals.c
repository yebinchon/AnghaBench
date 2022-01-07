
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ordinal; } ;
typedef TYPE_1__ export_type ;


 int d_high_ord ;
 int d_low_ord ;
 int d_nfuncs ;
 int free (char*) ;
 int memset (char*,int ,int) ;
 int pfunc ;
 int qsort (TYPE_1__**,int,int,int ) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
fill_ordinals (export_type **d_export_vec)
{
  int lowest = -1;
  int i;
  char *ptr;
  int size = 65536;

  qsort (d_export_vec, d_nfuncs, sizeof (export_type *), pfunc);


  ptr = (char *) xmalloc (size);

  memset (ptr, 0, size);


  for (i = 0; i < d_nfuncs; i++)
    {
      if (d_export_vec[i]->ordinal != -1)
 {
   ptr[d_export_vec[i]->ordinal] = 1;

   if (lowest == -1 || d_export_vec[i]->ordinal < lowest)
     lowest = d_export_vec[i]->ordinal;
 }
    }


  if (lowest == -1)
    lowest = 1;


  for (i = 0; i < d_nfuncs; i++)
    {
      if (d_export_vec[i]->ordinal == -1)
 {
   int j;


   for (j = lowest; j < size; j++)
     if (ptr[j] == 0)
       {
  ptr[j] = 1;
  d_export_vec[i]->ordinal = j;
  goto done;
       }


   for (j = lowest; j >0; j--)
     if (ptr[j] == 0)
       {
  ptr[j] = 1;
  d_export_vec[i]->ordinal = j;
  goto done;
       }
 done:;
 }
    }

  free (ptr);


  qsort (d_export_vec, d_nfuncs, sizeof (export_type *), pfunc);


  if (d_nfuncs)
    {
      if (d_export_vec[0])
 d_low_ord = d_export_vec[0]->ordinal;
      if (d_export_vec[d_nfuncs-1])
 d_high_ord = d_export_vec[d_nfuncs-1]->ordinal;
    }
}
