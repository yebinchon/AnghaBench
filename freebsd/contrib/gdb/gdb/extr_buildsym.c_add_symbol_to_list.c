
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct symbol {TYPE_1__ ginfo; } ;
struct pending {scalar_t__ nsyms; struct symbol** symbol; struct pending* next; } ;


 scalar_t__ PENDINGSIZE ;
 scalar_t__ SYMBOL_LANGUAGE (struct symbol*) ;
 int cp_scan_for_anonymous_namespaces (struct symbol*) ;
 struct pending* free_pendings ;
 scalar_t__ language_cplus ;
 scalar_t__ xmalloc (int) ;

void
add_symbol_to_list (struct symbol *symbol, struct pending **listhead)
{
  struct pending *link;


  if (symbol->ginfo.name && symbol->ginfo.name[0] == '#')
    return;



  if (*listhead == ((void*)0) || (*listhead)->nsyms == PENDINGSIZE)
    {
      if (free_pendings)
 {
   link = free_pendings;
   free_pendings = link->next;
 }
      else
 {
   link = (struct pending *) xmalloc (sizeof (struct pending));
 }

      link->next = *listhead;
      *listhead = link;
      link->nsyms = 0;
    }

  (*listhead)->symbol[(*listhead)->nsyms++] = symbol;




  if (SYMBOL_LANGUAGE (symbol) == language_cplus)
    cp_scan_for_anonymous_namespaces (symbol);
}
