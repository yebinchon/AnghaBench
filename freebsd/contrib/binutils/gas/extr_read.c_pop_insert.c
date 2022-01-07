
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ poc_name; } ;
typedef TYPE_1__ pseudo_typeS ;


 int _ (char*) ;
 int as_fatal (int ,int ,char const*) ;
 char* hash_insert (int ,scalar_t__,char*) ;
 int po_hash ;
 int pop_override_ok ;
 int pop_table_name ;
 scalar_t__ strcmp (char const*,char*) ;

void
pop_insert (const pseudo_typeS *table)
{
  const char *errtxt;
  const pseudo_typeS *pop;
  for (pop = table; pop->poc_name; pop++)
    {
      errtxt = hash_insert (po_hash, pop->poc_name, (char *) pop);
      if (errtxt && (!pop_override_ok || strcmp (errtxt, "exists")))
 as_fatal (_("error constructing %s pseudo-op table: %s"), pop_table_name,
    errtxt);
    }
}
