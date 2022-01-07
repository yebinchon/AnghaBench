
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* XML_Parser ;
struct TYPE_8__ {int prevPrefixBinding; TYPE_1__* prefix; struct TYPE_8__* nextTagBinding; } ;
struct TYPE_7__ {TYPE_3__* m_freeBindingList; int m_handlerArg; int (* m_endNamespaceDeclHandler ) (int ,int ) ;} ;
struct TYPE_6__ {int binding; int name; } ;
typedef TYPE_3__ BINDING ;


 int stub1 (int ,int ) ;

__attribute__((used)) static void
freeBindings(XML_Parser parser, BINDING *bindings)
{
  while (bindings) {
    BINDING *b = bindings;




    if (parser->m_endNamespaceDeclHandler)
        parser->m_endNamespaceDeclHandler(parser->m_handlerArg, b->prefix->name);

    bindings = bindings->nextTagBinding;
    b->nextTagBinding = parser->m_freeBindingList;
    parser->m_freeBindingList = b;
    b->prefix->binding = b->prevPrefixBinding;
  }
}
