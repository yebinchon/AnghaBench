
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef enum XML_Convert_Result { ____Placeholder_XML_Convert_Result } XML_Convert_Result ;
typedef TYPE_2__* XML_Parser ;
typedef int XML_Char ;
struct TYPE_5__ {char* m_eventPtr; char* m_eventEndPtr; int m_handlerArg; int (* m_defaultHandler ) (int ,int *,int) ;int * m_dataBuf; scalar_t__ m_dataBufEnd; TYPE_1__* m_openInternalEntities; int const* m_encoding; } ;
struct TYPE_4__ {char* internalEventPtr; char* internalEventEndPtr; } ;
typedef int ICHAR ;
typedef int ENCODING ;


 scalar_t__ MUST_CONVERT (int const*,char const*) ;
 int XML_CONVERT_COMPLETED ;
 int XML_CONVERT_INPUT_INCOMPLETE ;
 int XmlConvert (int const*,char const**,char const*,int **,int *) ;
 int stub1 (int ,int *,int) ;
 int stub2 (int ,int *,int) ;

__attribute__((used)) static void
reportDefault(XML_Parser parser, const ENCODING *enc,
              const char *s, const char *end)
{
  if (MUST_CONVERT(enc, s)) {
    enum XML_Convert_Result convert_res;
    const char **eventPP;
    const char **eventEndPP;
    if (enc == parser->m_encoding) {
      eventPP = &parser->m_eventPtr;
      eventEndPP = &parser->m_eventEndPtr;
    }
    else {
      eventPP = &(parser->m_openInternalEntities->internalEventPtr);
      eventEndPP = &(parser->m_openInternalEntities->internalEventEndPtr);

    }
    do {
      ICHAR *dataPtr = (ICHAR *)parser->m_dataBuf;
      convert_res = XmlConvert(enc, &s, end, &dataPtr, (ICHAR *)parser->m_dataBufEnd);
      *eventEndPP = s;
      parser->m_defaultHandler(parser->m_handlerArg, parser->m_dataBuf, (int)(dataPtr - (ICHAR *)parser->m_dataBuf));
      *eventPP = s;
    } while ((convert_res != XML_CONVERT_COMPLETED) && (convert_res != XML_CONVERT_INPUT_INCOMPLETE));
  }
  else
    parser->m_defaultHandler(parser->m_handlerArg, (XML_Char *)s, (int)((XML_Char *)end - (XML_Char *)s));
}
