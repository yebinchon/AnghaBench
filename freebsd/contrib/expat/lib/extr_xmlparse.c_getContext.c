
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_4__* XML_Parser ;
typedef scalar_t__ XML_Char ;
typedef scalar_t__ XML_Bool ;
struct TYPE_17__ {scalar_t__ const* start; } ;
struct TYPE_11__ {TYPE_1__* binding; } ;
struct TYPE_16__ {int generalEntities; int prefixes; TYPE_2__ defaultPrefix; } ;
struct TYPE_15__ {scalar_t__* name; int open; } ;
struct TYPE_14__ {TYPE_3__* binding; scalar_t__* name; } ;
struct TYPE_13__ {TYPE_8__ m_tempPool; scalar_t__ m_namespaceSeparator; TYPE_7__* m_dtd; } ;
struct TYPE_12__ {int uriLen; scalar_t__ const* uri; } ;
struct TYPE_10__ {int uriLen; scalar_t__ const* uri; } ;
typedef TYPE_5__ PREFIX ;
typedef int HASH_TABLE_ITER ;
typedef TYPE_6__ ENTITY ;
typedef TYPE_7__ DTD ;


 char ASCII_EQUALS ;
 scalar_t__ const CONTEXT_SEP ;
 scalar_t__ XML_FALSE ;
 scalar_t__ const XML_T (char) ;
 scalar_t__ XML_TRUE ;
 int hashTableIterInit (int *,int *) ;
 scalar_t__ hashTableIterNext (int *) ;
 int poolAppendChar (TYPE_8__*,scalar_t__ const) ;

__attribute__((used)) static const XML_Char *
getContext(XML_Parser parser)
{
  DTD * const dtd = parser->m_dtd;
  HASH_TABLE_ITER iter;
  XML_Bool needSep = XML_FALSE;

  if (dtd->defaultPrefix.binding) {
    int i;
    int len;
    if (!poolAppendChar(&parser->m_tempPool, XML_T(ASCII_EQUALS)))
      return ((void*)0);
    len = dtd->defaultPrefix.binding->uriLen;
    if (parser->m_namespaceSeparator)
      len--;
    for (i = 0; i < len; i++) {
      if (!poolAppendChar(&parser->m_tempPool, dtd->defaultPrefix.binding->uri[i])) {
        return ((void*)0);
      }
    }
    needSep = XML_TRUE;
  }

  hashTableIterInit(&iter, &(dtd->prefixes));
  for (;;) {
    int i;
    int len;
    const XML_Char *s;
    PREFIX *prefix = (PREFIX *)hashTableIterNext(&iter);
    if (!prefix)
      break;
    if (!prefix->binding) {






      continue;
    }
    if (needSep && !poolAppendChar(&parser->m_tempPool, CONTEXT_SEP))
      return ((void*)0);
    for (s = prefix->name; *s; s++)
      if (!poolAppendChar(&parser->m_tempPool, *s))
        return ((void*)0);
    if (!poolAppendChar(&parser->m_tempPool, XML_T(ASCII_EQUALS)))
      return ((void*)0);
    len = prefix->binding->uriLen;
    if (parser->m_namespaceSeparator)
      len--;
    for (i = 0; i < len; i++)
      if (!poolAppendChar(&parser->m_tempPool, prefix->binding->uri[i]))
        return ((void*)0);
    needSep = XML_TRUE;
  }


  hashTableIterInit(&iter, &(dtd->generalEntities));
  for (;;) {
    const XML_Char *s;
    ENTITY *e = (ENTITY *)hashTableIterNext(&iter);
    if (!e)
      break;
    if (!e->open)
      continue;
    if (needSep && !poolAppendChar(&parser->m_tempPool, CONTEXT_SEP))
      return ((void*)0);
    for (s = e->name; *s; s++)
      if (!poolAppendChar(&parser->m_tempPool, *s))
        return 0;
    needSep = XML_TRUE;
  }

  if (!poolAppendChar(&parser->m_tempPool, XML_T('\0')))
    return ((void*)0);
  return parser->m_tempPool.start;
}
