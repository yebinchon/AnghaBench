
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* XML_Parser ;
struct TYPE_10__ {unsigned int numchildren; int * name; struct TYPE_10__* children; int type; int quant; } ;
typedef TYPE_3__ XML_Content ;
typedef int XML_Char ;
struct TYPE_11__ {TYPE_1__* scaffold; } ;
struct TYPE_9__ {TYPE_4__* m_dtd; } ;
struct TYPE_8__ {unsigned int childcnt; int firstchild; int nextsib; int * name; int quant; int type; } ;
typedef TYPE_4__ DTD ;


 int XML_CTYPE_NAME ;

__attribute__((used)) static void
build_node(XML_Parser parser,
           int src_node,
           XML_Content *dest,
           XML_Content **contpos,
           XML_Char **strpos)
{
  DTD * const dtd = parser->m_dtd;
  dest->type = dtd->scaffold[src_node].type;
  dest->quant = dtd->scaffold[src_node].quant;
  if (dest->type == XML_CTYPE_NAME) {
    const XML_Char *src;
    dest->name = *strpos;
    src = dtd->scaffold[src_node].name;
    for (;;) {
      *(*strpos)++ = *src;
      if (!*src)
        break;
      src++;
    }
    dest->numchildren = 0;
    dest->children = ((void*)0);
  }
  else {
    unsigned int i;
    int cn;
    dest->numchildren = dtd->scaffold[src_node].childcnt;
    dest->children = *contpos;
    *contpos += dest->numchildren;
    for (i = 0, cn = dtd->scaffold[src_node].firstchild;
         i < dest->numchildren;
         i++, cn = dtd->scaffold[cn].nextsib) {
      build_node(parser, cn, &(dest->children[i]), contpos, strpos);
    }
    dest->name = ((void*)0);
  }
}
