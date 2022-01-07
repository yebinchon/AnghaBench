
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* XML_Parser ;
typedef scalar_t__ XML_Char ;
struct TYPE_11__ {int pool; int prefixes; } ;
struct TYPE_10__ {scalar_t__* name; TYPE_2__* prefix; } ;
struct TYPE_9__ {scalar_t__ name; } ;
struct TYPE_8__ {TYPE_4__* m_dtd; } ;
typedef TYPE_2__ PREFIX ;
typedef TYPE_3__ ELEMENT_TYPE ;
typedef TYPE_4__ DTD ;


 char ASCII_COLON ;
 scalar_t__ const XML_T (char) ;
 scalar_t__ lookup (TYPE_1__*,int *,scalar_t__,int) ;
 int poolAppendChar (int *,scalar_t__ const) ;
 int poolDiscard (int *) ;
 int poolFinish (int *) ;
 scalar_t__ poolStart (int *) ;

__attribute__((used)) static int
setElementTypePrefix(XML_Parser parser, ELEMENT_TYPE *elementType)
{
  DTD * const dtd = parser->m_dtd;
  const XML_Char *name;
  for (name = elementType->name; *name; name++) {
    if (*name == XML_T(ASCII_COLON)) {
      PREFIX *prefix;
      const XML_Char *s;
      for (s = elementType->name; s != name; s++) {
        if (!poolAppendChar(&dtd->pool, *s))
          return 0;
      }
      if (!poolAppendChar(&dtd->pool, XML_T('\0')))
        return 0;
      prefix = (PREFIX *)lookup(parser, &dtd->prefixes, poolStart(&dtd->pool),
                                sizeof(PREFIX));
      if (!prefix)
        return 0;
      if (prefix->name == poolStart(&dtd->pool))
        poolFinish(&dtd->pool);
      else
        poolDiscard(&dtd->pool);
      elementType->prefix = prefix;

    }
  }
  return 1;
}
