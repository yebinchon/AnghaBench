
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ref {struct df_ref* next_ref; } ;


 int gcc_unreachable () ;

__attribute__((used)) static struct df_ref *
df_ref_unlink (struct df_ref *chain, struct df_ref *ref)
{
  struct df_ref *orig_chain = chain;
  struct df_ref *prev = ((void*)0);
  while (chain)
    {
      if (chain == ref)
 {
   if (prev)
     {
       prev->next_ref = ref->next_ref;
       ref->next_ref = ((void*)0);
       return orig_chain;
     }
   else
     {
       chain = ref->next_ref;
       ref->next_ref = ((void*)0);
       return chain;
     }
 }

      prev = chain;
      chain = chain->next_ref;
    }


  gcc_unreachable ();
  return ((void*)0);
}
