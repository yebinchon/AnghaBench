
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct change {struct change* link; } ;


 int debug_script (struct change*) ;
 struct change* stub1 (struct change*) ;
 void stub2 (struct change*) ;

void
print_script (struct change *script,
       struct change * (*hunkfun) (struct change *),
       void (*printfun) (struct change *))
{
  struct change *next = script;

  while (next)
    {
      struct change *this, *end;


      this = next;
      end = (*hunkfun) (next);



      next = end->link;
      end->link = 0;





      (*printfun) (this);


      end->link = next;
    }
}
