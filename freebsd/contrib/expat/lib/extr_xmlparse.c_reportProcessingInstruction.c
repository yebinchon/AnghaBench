
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* XML_Parser ;
typedef int XML_Char ;
struct TYPE_11__ {int minBytesPerChar; } ;
struct TYPE_10__ {int m_tempPool; int m_handlerArg; int (* m_processingInstructionHandler ) (int ,int const*,int *) ;scalar_t__ m_defaultHandler; } ;
typedef TYPE_2__ ENCODING ;


 int XmlNameLength (TYPE_2__ const*,char const*) ;
 char const* XmlSkipS (TYPE_2__ const*,char const*) ;
 int normalizeLines (int *) ;
 int poolClear (int *) ;
 int poolFinish (int *) ;
 void* poolStoreString (int *,TYPE_2__ const*,char const*,char const*) ;
 int reportDefault (TYPE_1__*,TYPE_2__ const*,char const*,char const*) ;
 int stub1 (int ,int const*,int *) ;

__attribute__((used)) static int
reportProcessingInstruction(XML_Parser parser, const ENCODING *enc,
                            const char *start, const char *end)
{
  const XML_Char *target;
  XML_Char *data;
  const char *tem;
  if (!parser->m_processingInstructionHandler) {
    if (parser->m_defaultHandler)
      reportDefault(parser, enc, start, end);
    return 1;
  }
  start += enc->minBytesPerChar * 2;
  tem = start + XmlNameLength(enc, start);
  target = poolStoreString(&parser->m_tempPool, enc, start, tem);
  if (!target)
    return 0;
  poolFinish(&parser->m_tempPool);
  data = poolStoreString(&parser->m_tempPool, enc,
                        XmlSkipS(enc, tem),
                        end - enc->minBytesPerChar*2);
  if (!data)
    return 0;
  normalizeLines(data);
  parser->m_processingInstructionHandler(parser->m_handlerArg, target, data);
  poolClear(&parser->m_tempPool);
  return 1;
}
