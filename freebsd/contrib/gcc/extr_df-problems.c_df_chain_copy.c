
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ref {int dummy; } ;
struct df_link {struct df_link* next; int ref; } ;
struct dataflow {int dummy; } ;


 int df_chain_create (struct dataflow*,struct df_ref*,int ) ;

void
df_chain_copy (struct dataflow *dflow,
        struct df_ref *to_ref,
        struct df_link *from_ref)
{
  while (from_ref)
    {
      df_chain_create (dflow, to_ref, from_ref->ref);
      from_ref = from_ref->next;
    }
}
