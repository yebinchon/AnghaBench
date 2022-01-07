
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ordinal; int noname; int data; int constant; int name; } ;
typedef TYPE_1__ export_type ;


 int _ (char*) ;
 int d_named_nfuncs ;
 int d_nfuncs ;
 int fatal (int ,int ) ;
 int inform (int ,int ,int,int) ;
 int nfunc ;
 int qsort (TYPE_1__**,int,int,int ) ;
 int remove_null_names (TYPE_1__**) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static void
process_duplicates (export_type **d_export_vec)
{
  int more = 1;
  int i;

  while (more)
    {
      more = 0;

      qsort (d_export_vec, d_nfuncs, sizeof (export_type *), nfunc);

      for (i = 0; i < d_nfuncs - 1; i++)
 {
   if (strcmp (d_export_vec[i]->name,
        d_export_vec[i + 1]->name) == 0)
     {
       export_type *a = d_export_vec[i];
       export_type *b = d_export_vec[i + 1];

       more = 1;


       inform (_("Warning, ignoring duplicate EXPORT %s %d,%d"),
        a->name, a->ordinal, b->ordinal);

       if (a->ordinal != -1
    && b->ordinal != -1)

  fatal (_("Error, duplicate EXPORT with oridinals: %s"),
        a->name);


       b->ordinal = a->ordinal > 0 ? a->ordinal : b->ordinal;
       b->constant |= a->constant;
       b->noname |= a->noname;
       b->data |= a->data;
       d_export_vec[i] = 0;
     }

   remove_null_names (d_export_vec);
 }
    }


  for (i = 0; i < d_nfuncs; i++)
    if (!d_export_vec[i]->noname)
      d_named_nfuncs++;
}
