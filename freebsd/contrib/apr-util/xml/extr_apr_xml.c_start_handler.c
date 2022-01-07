
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {void* error; int p; TYPE_1__* doc; TYPE_4__* cur_elem; } ;
typedef TYPE_2__ apr_xml_parser ;
struct TYPE_10__ {char const* prefix; int emptyURI; struct TYPE_10__* next; int ns; } ;
typedef TYPE_3__ apr_xml_ns_scope ;
struct TYPE_11__ {char* name; TYPE_5__* attr; void* ns; int * lang; struct TYPE_11__* parent; TYPE_3__* ns_scope; struct TYPE_11__* last_child; struct TYPE_11__* next; struct TYPE_11__* first_child; } ;
typedef TYPE_4__ apr_xml_elem ;
struct TYPE_12__ {char* name; char* value; void* ns; struct TYPE_12__* next; } ;
typedef TYPE_5__ apr_xml_attr ;
struct TYPE_8__ {int namespaces; TYPE_4__* root; } ;


 int APR_KW_xmlns ;
 int APR_KW_xmlns_lang ;
 void* APR_XML_NS_ERROR_INVALID_DECL ;
 scalar_t__ APR_XML_NS_IS_ERROR (void*) ;
 scalar_t__ APR_XML_NS_IS_RESERVED (char*) ;
 void* APR_XML_NS_NONE ;
 TYPE_5__* apr_palloc (int ,int) ;
 void* apr_pcalloc (int ,int) ;
 void* apr_pstrdup (int ,char const*) ;
 int apr_xml_insert_uri (int ,char const*) ;
 void* apr_xml_quote_string (int ,char*,int) ;
 void* find_prefix (TYPE_2__*,char*) ;
 char* strchr (char*,int) ;
 scalar_t__ strcmp (char*,int ) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static void start_handler(void *userdata, const char *name, const char **attrs)
{
    apr_xml_parser *parser = userdata;
    apr_xml_elem *elem;
    apr_xml_attr *attr;
    apr_xml_attr *prev;
    char *colon;
    const char *quoted;
    char *elem_name;


    if (parser->error)
 return;

    elem = apr_pcalloc(parser->p, sizeof(*elem));


    elem->name = elem_name = apr_pstrdup(parser->p, name);


    while (*attrs) {
 attr = apr_palloc(parser->p, sizeof(*attr));
 attr->name = apr_pstrdup(parser->p, *attrs++);
 attr->value = apr_pstrdup(parser->p, *attrs++);
 attr->next = elem->attr;
 elem->attr = attr;
    }


    if (parser->cur_elem == ((void*)0)) {

 parser->cur_elem = parser->doc->root = elem;
    }
    else {

 elem->parent = parser->cur_elem;


 if (elem->parent->last_child == ((void*)0)) {

     elem->parent->first_child = elem->parent->last_child = elem;
 }
 else {

     elem->parent->last_child->next = elem;
     elem->parent->last_child = elem;
 }


 parser->cur_elem = elem;
    }


    for (prev = ((void*)0), attr = elem->attr;
  attr;
  attr = attr->next) {
 if (strncmp(attr->name, APR_KW_xmlns, 5) == 0) {
     const char *prefix = &attr->name[5];
     apr_xml_ns_scope *ns_scope;


     if (*prefix == 0x3A) {


                if (attr->value[0] == '\0') {
                    parser->error = APR_XML_NS_ERROR_INVALID_DECL;
                    return;
                }
  ++prefix;
            }
     else if (*prefix != '\0') {

  prev = attr;
  continue;
     }


     quoted = apr_xml_quote_string(parser->p, attr->value, 1);


     ns_scope = apr_pcalloc(parser->p, sizeof(*ns_scope));
     ns_scope->prefix = prefix;
     ns_scope->ns = apr_xml_insert_uri(parser->doc->namespaces, quoted);
     ns_scope->emptyURI = *quoted == '\0';
     ns_scope->next = elem->ns_scope;
     elem->ns_scope = ns_scope;


     if (prev == ((void*)0))
  elem->attr = attr->next;
     else
  prev->next = attr->next;


 }
 else if (strcmp(attr->name, APR_KW_xmlns_lang) == 0) {

     elem->lang = apr_xml_quote_string(parser->p, attr->value, 1);


     if (prev == ((void*)0))
  elem->attr = attr->next;
     else
  prev->next = attr->next;


 }
 else {

     prev = attr;
 }
    }







    if (elem->lang == ((void*)0) && elem->parent != ((void*)0))
 elem->lang = elem->parent->lang;


    colon = strchr(elem_name, 0x3A);
    if (colon == ((void*)0)) {





 elem->ns = find_prefix(parser, "");
    }
    else if (APR_XML_NS_IS_RESERVED(elem->name)) {
 elem->ns = APR_XML_NS_NONE;
    }
    else {
 *colon = '\0';
 elem->ns = find_prefix(parser, elem->name);
 elem->name = colon + 1;

 if (APR_XML_NS_IS_ERROR(elem->ns)) {
     parser->error = elem->ns;
     return;
 }
    }


    for (attr = elem->attr; attr; attr = attr->next) {





        char *attr_name = (char *)attr->name;

 colon = strchr(attr_name, 0x3A);
 if (colon == ((void*)0)) {




     attr->ns = APR_XML_NS_NONE;
 }
 else if (APR_XML_NS_IS_RESERVED(attr->name)) {
     attr->ns = APR_XML_NS_NONE;
 }
 else {
     *colon = '\0';
     attr->ns = find_prefix(parser, attr->name);
     attr->name = colon + 1;

     if (APR_XML_NS_IS_ERROR(attr->ns)) {
  parser->error = attr->ns;
  return;
     }
 }
    }
}
