
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sym_head {int dummy; } ;
struct sym_entry {struct sym_entry* name; struct sym_entry* sym; } ;


 struct sym_entry* STAILQ_FIRST (struct sym_head*) ;
 struct sym_entry* STAILQ_NEXT (struct sym_entry*,int ) ;
 int free (struct sym_entry*) ;
 int sym_entries ;

__attribute__((used)) static void
sym_list_dest(struct sym_head *headp)
{
 struct sym_entry *ep, *ep_n;

 if (headp == ((void*)0))
  return;

 ep = STAILQ_FIRST(headp);
 while (ep != ((void*)0)) {
  ep_n = STAILQ_NEXT(ep, sym_entries);
  free(ep->sym);
  free(ep->name);
  free(ep);
  ep = ep_n;
 }
}
