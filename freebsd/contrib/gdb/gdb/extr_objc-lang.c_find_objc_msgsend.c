
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct minimal_symbol {int dummy; } ;
struct TYPE_2__ {char* name; scalar_t__ begin; scalar_t__ end; } ;


 void* SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 struct minimal_symbol* lookup_minimal_symbol (char*,int *,int *) ;
 TYPE_1__* methcalls ;
 unsigned int nmethcalls ;

__attribute__((used)) static void
find_objc_msgsend (void)
{
  unsigned int i;
  for (i = 0; i < nmethcalls; i++) {

    struct minimal_symbol *func;


    func = lookup_minimal_symbol (methcalls[i].name, ((void*)0), ((void*)0));
    if ((func == ((void*)0)) && (methcalls[i].name[0] == '_')) {
      func = lookup_minimal_symbol (methcalls[i].name + 1, ((void*)0), ((void*)0));
    }
    if (func == ((void*)0)) {
      methcalls[i].begin = 0;
      methcalls[i].end = 0;
      continue;
    }

    methcalls[i].begin = SYMBOL_VALUE_ADDRESS (func);
    do {
      methcalls[i].end = SYMBOL_VALUE_ADDRESS (++func);
    } while (methcalls[i].begin == methcalls[i].end);
  }
}
