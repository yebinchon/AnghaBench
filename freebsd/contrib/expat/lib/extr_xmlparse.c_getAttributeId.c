
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
struct TYPE_11__ {scalar_t__ const* name; TYPE_2__* prefix; int xmlns; } ;
struct TYPE_9__ {scalar_t__ const* name; } ;
struct TYPE_10__ {int pool; int prefixes; TYPE_2__ defaultPrefix; int attributeIds; } ;
struct TYPE_8__ {int m_ns; TYPE_3__* m_dtd; } ;
typedef TYPE_2__ PREFIX ;
typedef int ENCODING ;
typedef TYPE_3__ DTD ;
typedef TYPE_4__ ATTRIBUTE_ID ;


 char ASCII_COLON ;
 char ASCII_l ;
 char ASCII_m ;
 char ASCII_n ;
 char ASCII_s ;
 char ASCII_x ;
 scalar_t__ const XML_T (char) ;
 int XML_TRUE ;
 scalar_t__ lookup (TYPE_1__*,int *,scalar_t__ const*,int) ;
 int poolAppendChar (int *,scalar_t__ const) ;
 int poolDiscard (int *) ;
 int poolFinish (int *) ;
 scalar_t__ const* poolStart (int *) ;
 scalar_t__* poolStoreString (int *,int const*,char const*,char const*) ;

__attribute__((used)) static ATTRIBUTE_ID *
getAttributeId(XML_Parser parser, const ENCODING *enc,
               const char *start, const char *end)
{
  DTD * const dtd = parser->m_dtd;
  ATTRIBUTE_ID *id;
  const XML_Char *name;
  if (!poolAppendChar(&dtd->pool, XML_T('\0')))
    return ((void*)0);
  name = poolStoreString(&dtd->pool, enc, start, end);
  if (!name)
    return ((void*)0);

  ++name;
  id = (ATTRIBUTE_ID *)lookup(parser, &dtd->attributeIds, name, sizeof(ATTRIBUTE_ID));
  if (!id)
    return ((void*)0);
  if (id->name != name)
    poolDiscard(&dtd->pool);
  else {
    poolFinish(&dtd->pool);
    if (!parser->m_ns)
      ;
    else if (name[0] == XML_T(ASCII_x)
        && name[1] == XML_T(ASCII_m)
        && name[2] == XML_T(ASCII_l)
        && name[3] == XML_T(ASCII_n)
        && name[4] == XML_T(ASCII_s)
        && (name[5] == XML_T('\0') || name[5] == XML_T(ASCII_COLON))) {
      if (name[5] == XML_T('\0'))
        id->prefix = &dtd->defaultPrefix;
      else
        id->prefix = (PREFIX *)lookup(parser, &dtd->prefixes, name + 6, sizeof(PREFIX));
      id->xmlns = XML_TRUE;
    }
    else {
      int i;
      for (i = 0; name[i]; i++) {

        if (name[i] == XML_T(ASCII_COLON)) {
          int j;
          for (j = 0; j < i; j++) {
            if (!poolAppendChar(&dtd->pool, name[j]))
              return ((void*)0);
          }
          if (!poolAppendChar(&dtd->pool, XML_T('\0')))
            return ((void*)0);
          id->prefix = (PREFIX *)lookup(parser, &dtd->prefixes, poolStart(&dtd->pool),
                                        sizeof(PREFIX));
          if (!id->prefix)
            return ((void*)0);
          if (id->prefix->name == poolStart(&dtd->pool))
            poolFinish(&dtd->pool);
          else
            poolDiscard(&dtd->pool);
          break;
        }
      }
    }
  }
  return id;
}
