
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reload {int dummy; } ;
struct insn_chain {int n_reloads; void* rld; } ;


 int memcpy (void*,int ,int) ;
 int n_reloads ;
 void* obstack_alloc (int *,int) ;
 void* reload_insn_firstobj ;
 int reload_obstack ;
 int rld ;

__attribute__((used)) static void
copy_reloads (struct insn_chain *chain)
{
  chain->n_reloads = n_reloads;
  chain->rld = obstack_alloc (&reload_obstack,
         n_reloads * sizeof (struct reload));
  memcpy (chain->rld, rld, n_reloads * sizeof (struct reload));
  reload_insn_firstobj = obstack_alloc (&reload_obstack, 0);
}
