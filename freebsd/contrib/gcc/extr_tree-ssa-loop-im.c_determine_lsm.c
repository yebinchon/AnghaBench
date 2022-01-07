
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {struct loop* tree_root; } ;
struct loop {struct loop* next; struct loop* outer; struct loop* inner; } ;


 int determine_lsm_loop (struct loop*) ;
 int loop_commit_inserts () ;

__attribute__((used)) static void
determine_lsm (struct loops *loops)
{
  struct loop *loop;

  if (!loops->tree_root->inner)
    return;




  loop = loops->tree_root->inner;
  while (1)
    {
      determine_lsm_loop (loop);

      if (loop->inner)
 {
   loop = loop->inner;
   continue;
 }
      while (!loop->next)
 {
   loop = loop->outer;
   if (loop == loops->tree_root)
     {
       loop_commit_inserts ();
       return;
     }
 }
      loop = loop->next;
    }
}
