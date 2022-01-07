
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* cur_elem; } ;
typedef TYPE_1__ apr_xml_parser ;
struct TYPE_6__ {int ns; scalar_t__ emptyURI; int prefix; struct TYPE_6__* next; } ;
typedef TYPE_2__ apr_xml_ns_scope ;
struct TYPE_7__ {TYPE_2__* ns_scope; struct TYPE_7__* parent; } ;
typedef TYPE_3__ apr_xml_elem ;


 int APR_XML_NS_ERROR_UNKNOWN_PREFIX ;
 int APR_XML_NS_NONE ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int find_prefix(apr_xml_parser *parser, const char *prefix)
{
    apr_xml_elem *elem = parser->cur_elem;





    for (; elem; elem = elem->parent) {
 apr_xml_ns_scope *ns_scope = elem->ns_scope;

 for (ns_scope = elem->ns_scope; ns_scope; ns_scope = ns_scope->next) {
     if (strcmp(prefix, ns_scope->prefix) == 0) {
  if (ns_scope->emptyURI) {






      return APR_XML_NS_NONE;
  }

  return ns_scope->ns;
     }
 }
    }
    if (*prefix == '\0') {
 return APR_XML_NS_NONE;
    }


    return APR_XML_NS_ERROR_UNKNOWN_PREFIX;
}
