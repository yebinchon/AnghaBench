
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xmlnsNamespace ;
typedef int xmlNamespace ;
typedef enum XML_Error { ____Placeholder_XML_Error } XML_Error ;
typedef TYPE_2__* XML_Parser ;
typedef char XML_Char ;
typedef int XML_Bool ;
struct TYPE_15__ {int uriAlloc; char* uri; int uriLen; struct TYPE_15__* nextTagBinding; struct TYPE_15__* prevPrefixBinding; int const* attId; TYPE_3__* prefix; } ;
struct TYPE_14__ {scalar_t__* name; TYPE_4__* binding; } ;
struct TYPE_13__ {char m_namespaceSeparator; int m_handlerArg; int (* m_startNamespaceDeclHandler ) (int ,scalar_t__*,char const*) ;TYPE_1__* m_dtd; TYPE_4__* m_freeBindingList; } ;
struct TYPE_12__ {TYPE_3__ defaultPrefix; } ;
typedef TYPE_3__ PREFIX ;
typedef TYPE_4__ BINDING ;
typedef int ATTRIBUTE_ID ;
 int EXPAND_SPARE ;
 int FREE (TYPE_2__*,TYPE_4__*) ;
 scalar_t__ MALLOC (TYPE_2__*,int) ;
 scalar_t__ REALLOC (TYPE_2__*,char*,int) ;
 int XML_ERROR_NONE ;
 int XML_ERROR_NO_MEMORY ;
 int XML_ERROR_RESERVED_NAMESPACE_URI ;
 int XML_ERROR_RESERVED_PREFIX_XML ;
 int XML_ERROR_RESERVED_PREFIX_XMLNS ;
 int XML_ERROR_UNDECLARING_PREFIX ;
 int XML_FALSE ;
 char const XML_T (char const) ;
 int XML_TRUE ;
 int memcpy (char*,char const*,int) ;
 int stub1 (int ,scalar_t__*,char const*) ;

__attribute__((used)) static enum XML_Error
addBinding(XML_Parser parser, PREFIX *prefix, const ATTRIBUTE_ID *attId,
           const XML_Char *uri, BINDING **bindingsPtr)
{
  static const XML_Char xmlNamespace[] = {
    138, 130, 130, 133, 148, 144, 144,
    129, 129, 129, 145, 129, 151, 145,
    134, 132, 139, 144, 143, 146, 147,
    144, 153, 149, 149, 150, 144,
    135, 142, 136, 140, 131, 133, 142, 141,
    140, '\0'
  };
  static const int xmlLen =
    (int)sizeof(xmlNamespace)/sizeof(XML_Char) - 1;
  static const XML_Char xmlnsNamespace[] = {
    138, 130, 130, 133, 148, 144, 144,
    129, 129, 129, 145, 129, 151, 145,
    134, 132, 139, 144, 152, 154, 154,
    154, 144, 128, 136, 137, 135, 131,
    144, '\0'
  };
  static const int xmlnsLen =
    (int)sizeof(xmlnsNamespace)/sizeof(XML_Char) - 1;

  XML_Bool mustBeXML = XML_FALSE;
  XML_Bool isXML = XML_TRUE;
  XML_Bool isXMLNS = XML_TRUE;

  BINDING *b;
  int len;


  if (*uri == XML_T('\0') && prefix->name)
    return XML_ERROR_UNDECLARING_PREFIX;

  if (prefix->name
      && prefix->name[0] == XML_T(128)
      && prefix->name[1] == XML_T(136)
      && prefix->name[2] == XML_T(137)) {


    if (prefix->name[3] == XML_T(135)
        && prefix->name[4] == XML_T(131)
        && prefix->name[5] == XML_T('\0'))
      return XML_ERROR_RESERVED_PREFIX_XMLNS;

    if (prefix->name[3] == XML_T('\0'))
      mustBeXML = XML_TRUE;
  }

  for (len = 0; uri[len]; len++) {
    if (isXML && (len > xmlLen || uri[len] != xmlNamespace[len]))
      isXML = XML_FALSE;

    if (!mustBeXML && isXMLNS
        && (len > xmlnsLen || uri[len] != xmlnsNamespace[len]))
      isXMLNS = XML_FALSE;
  }
  isXML = isXML && len == xmlLen;
  isXMLNS = isXMLNS && len == xmlnsLen;

  if (mustBeXML != isXML)
    return mustBeXML ? XML_ERROR_RESERVED_PREFIX_XML
                     : XML_ERROR_RESERVED_NAMESPACE_URI;

  if (isXMLNS)
    return XML_ERROR_RESERVED_NAMESPACE_URI;

  if (parser->m_namespaceSeparator)
    len++;
  if (parser->m_freeBindingList) {
    b = parser->m_freeBindingList;
    if (len > b->uriAlloc) {
      XML_Char *temp = (XML_Char *)REALLOC(parser, b->uri,
                          sizeof(XML_Char) * (len + EXPAND_SPARE));
      if (temp == ((void*)0))
        return XML_ERROR_NO_MEMORY;
      b->uri = temp;
      b->uriAlloc = len + EXPAND_SPARE;
    }
    parser->m_freeBindingList = b->nextTagBinding;
  }
  else {
    b = (BINDING *)MALLOC(parser, sizeof(BINDING));
    if (!b)
      return XML_ERROR_NO_MEMORY;
    b->uri = (XML_Char *)MALLOC(parser, sizeof(XML_Char) * (len + EXPAND_SPARE));
    if (!b->uri) {
      FREE(parser, b);
      return XML_ERROR_NO_MEMORY;
    }
    b->uriAlloc = len + EXPAND_SPARE;
  }
  b->uriLen = len;
  memcpy(b->uri, uri, len * sizeof(XML_Char));
  if (parser->m_namespaceSeparator)
    b->uri[len - 1] = parser->m_namespaceSeparator;
  b->prefix = prefix;
  b->attId = attId;
  b->prevPrefixBinding = prefix->binding;

  if (*uri == XML_T('\0') && prefix == &parser->m_dtd->defaultPrefix)
    prefix->binding = ((void*)0);
  else
    prefix->binding = b;
  b->nextTagBinding = *bindingsPtr;
  *bindingsPtr = b;

  if (attId && parser->m_startNamespaceDeclHandler)
    parser->m_startNamespaceDeclHandler(parser->m_handlerArg, prefix->name,
                              prefix->binding ? uri : 0);
  return XML_ERROR_NONE;
}
