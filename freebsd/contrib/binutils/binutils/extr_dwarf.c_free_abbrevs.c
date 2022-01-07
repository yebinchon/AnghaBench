
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; struct TYPE_5__* first_attr; } ;
typedef TYPE_1__ abbrev_entry ;
typedef TYPE_1__ abbrev_attr ;


 TYPE_1__* first_abbrev ;
 int free (TYPE_1__*) ;
 int last_abbrev ;

__attribute__((used)) static void
free_abbrevs (void)
{
  abbrev_entry *abbrev;

  for (abbrev = first_abbrev; abbrev;)
    {
      abbrev_entry *next = abbrev->next;
      abbrev_attr *attr;

      for (attr = abbrev->first_attr; attr;)
 {
   abbrev_attr *next = attr->next;

   free (attr);
   attr = next;
 }

      free (abbrev);
      abbrev = next;
    }

  last_abbrev = first_abbrev = ((void*)0);
}
