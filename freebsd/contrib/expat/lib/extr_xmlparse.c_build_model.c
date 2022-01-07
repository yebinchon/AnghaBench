
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* XML_Parser ;
typedef int XML_Content ;
typedef int XML_Char ;
struct TYPE_7__ {int scaffCount; int contentStringLen; } ;
struct TYPE_6__ {TYPE_2__* m_dtd; } ;
typedef TYPE_2__ DTD ;


 scalar_t__ MALLOC (TYPE_1__*,int) ;
 int build_node (TYPE_1__*,int ,int *,int **,int **) ;

__attribute__((used)) static XML_Content *
build_model (XML_Parser parser)
{
  DTD * const dtd = parser->m_dtd;
  XML_Content *ret;
  XML_Content *cpos;
  XML_Char * str;
  int allocsize = (dtd->scaffCount * sizeof(XML_Content)
                   + (dtd->contentStringLen * sizeof(XML_Char)));

  ret = (XML_Content *)MALLOC(parser, allocsize);
  if (!ret)
    return ((void*)0);

  str = (XML_Char *) (&ret[dtd->scaffCount]);
  cpos = &ret[1];

  build_node(parser, 0, ret, &cpos, &str);
  return ret;
}
