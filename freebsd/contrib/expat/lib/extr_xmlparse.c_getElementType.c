
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* XML_Parser ;
typedef int XML_Char ;
struct TYPE_11__ {int pool; int elementTypes; } ;
struct TYPE_10__ {int const* name; } ;
struct TYPE_9__ {TYPE_3__* m_dtd; } ;
typedef int ENCODING ;
typedef TYPE_2__ ELEMENT_TYPE ;
typedef TYPE_3__ DTD ;


 scalar_t__ lookup (TYPE_1__*,int *,int const*,int) ;
 int poolDiscard (int *) ;
 int poolFinish (int *) ;
 int * poolStoreString (int *,int const*,char const*,char const*) ;
 int setElementTypePrefix (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static ELEMENT_TYPE *
getElementType(XML_Parser parser,
               const ENCODING *enc,
               const char *ptr,
               const char *end)
{
  DTD * const dtd = parser->m_dtd;
  const XML_Char *name = poolStoreString(&dtd->pool, enc, ptr, end);
  ELEMENT_TYPE *ret;

  if (!name)
    return ((void*)0);
  ret = (ELEMENT_TYPE *) lookup(parser, &dtd->elementTypes, name, sizeof(ELEMENT_TYPE));
  if (!ret)
    return ((void*)0);
  if (ret->name != name)
    poolDiscard(&dtd->pool);
  else {
    poolFinish(&dtd->pool);
    if (!setElementTypePrefix(parser, ret))
      return ((void*)0);
  }
  return ret;
}
