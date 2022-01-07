
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* XML_Parser ;
typedef int XML_Char ;
struct TYPE_9__ {int minBytesPerChar; } ;
struct TYPE_8__ {int m_tempPool; int m_handlerArg; int (* m_commentHandler ) (int ,int *) ;scalar_t__ m_defaultHandler; } ;
typedef TYPE_2__ ENCODING ;


 int normalizeLines (int *) ;
 int poolClear (int *) ;
 int * poolStoreString (int *,TYPE_2__ const*,char const*,char const*) ;
 int reportDefault (TYPE_1__*,TYPE_2__ const*,char const*,char const*) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static int
reportComment(XML_Parser parser, const ENCODING *enc,
              const char *start, const char *end)
{
  XML_Char *data;
  if (!parser->m_commentHandler) {
    if (parser->m_defaultHandler)
      reportDefault(parser, enc, start, end);
    return 1;
  }
  data = poolStoreString(&parser->m_tempPool,
                         enc,
                         start + enc->minBytesPerChar * 4,
                         end - enc->minBytesPerChar * 3);
  if (!data)
    return 0;
  normalizeLines(data);
  parser->m_commentHandler(parser->m_handlerArg, data);
  poolClear(&parser->m_tempPool);
  return 1;
}
