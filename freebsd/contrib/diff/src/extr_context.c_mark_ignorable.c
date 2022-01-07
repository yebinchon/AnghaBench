
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change {int ignore; struct change* link; } ;
typedef int lin ;


 int analyze_hunk (struct change*,int *,int *,int *,int *) ;

__attribute__((used)) static void
mark_ignorable (struct change *script)
{
  while (script)
    {
      struct change *next = script->link;
      lin first0, last0, first1, last1;


      script->link = 0;


      script->ignore = ! analyze_hunk (script,
           &first0, &last0, &first1, &last1);


      script->link = next;


      script = next;
    }
}
