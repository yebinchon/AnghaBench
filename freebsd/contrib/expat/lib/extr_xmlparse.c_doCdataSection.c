
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum XML_Error { ____Placeholder_XML_Error } XML_Error ;
typedef enum XML_Convert_Result { ____Placeholder_XML_Convert_Result } XML_Convert_Result ;
typedef TYPE_3__* XML_Parser ;
typedef int (* XML_CharacterDataHandler ) (int ,int*,int) ;
typedef int XML_Char ;
typedef int XML_Bool ;
struct TYPE_7__ {int parsing; } ;
struct TYPE_8__ {char* m_eventPtr; char* m_eventEndPtr; int* m_dataBuf; TYPE_2__ m_parsingStatus; int m_defaultHandler; int m_handlerArg; scalar_t__ m_dataBufEnd; int (* m_characterDataHandler ) (int ,int*,int) ;int (* m_endCdataSectionHandler ) (int ) ;TYPE_1__* m_openInternalEntities; int const* m_encoding; } ;
struct TYPE_6__ {char* internalEventPtr; char* internalEventEndPtr; } ;
typedef int ICHAR ;
typedef int ENCODING ;


 int MUST_CONVERT (int const*,char const*) ;
 int const XML_CONVERT_COMPLETED ;
 int const XML_CONVERT_INPUT_INCOMPLETE ;
 int XML_ERROR_ABORTED ;
 int XML_ERROR_INVALID_TOKEN ;
 int XML_ERROR_NONE ;
 int XML_ERROR_PARTIAL_CHAR ;
 int XML_ERROR_UNCLOSED_CDATA_SECTION ;
 int XML_ERROR_UNEXPECTED_STATE ;
 int XmlCdataSectionTok (int const*,char const*,char const*,char const**) ;
 int XmlConvert (int const*,char const**,char const*,int **,int *) ;
 int reportDefault (TYPE_3__*,int const*,char const*,char const*) ;
 int stub1 (int ) ;
 int stub2 (int ,int*,int) ;
 int stub3 (int ,int*,int) ;

__attribute__((used)) static enum XML_Error
doCdataSection(XML_Parser parser,
               const ENCODING *enc,
               const char **startPtr,
               const char *end,
               const char **nextPtr,
               XML_Bool haveMore)
{
  const char *s = *startPtr;
  const char **eventPP;
  const char **eventEndPP;
  if (enc == parser->m_encoding) {
    eventPP = &parser->m_eventPtr;
    *eventPP = s;
    eventEndPP = &parser->m_eventEndPtr;
  }
  else {
    eventPP = &(parser->m_openInternalEntities->internalEventPtr);
    eventEndPP = &(parser->m_openInternalEntities->internalEventEndPtr);
  }
  *eventPP = s;
  *startPtr = ((void*)0);

  for (;;) {
    const char *next;
    int tok = XmlCdataSectionTok(enc, s, end, &next);
    *eventEndPP = next;
    switch (tok) {
    case 134:
      if (parser->m_endCdataSectionHandler)
        parser->m_endCdataSectionHandler(parser->m_handlerArg);





      else if (parser->m_defaultHandler)
        reportDefault(parser, enc, s, next);
      *startPtr = next;
      *nextPtr = next;
      if (parser->m_parsingStatus.parsing == 136)
        return XML_ERROR_ABORTED;
      else
        return XML_ERROR_NONE;
    case 132:
      if (parser->m_characterDataHandler) {
        XML_Char c = 0xA;
        parser->m_characterDataHandler(parser->m_handlerArg, &c, 1);
      }
      else if (parser->m_defaultHandler)
        reportDefault(parser, enc, s, next);
      break;
    case 133:
      {
        XML_CharacterDataHandler charDataHandler = parser->m_characterDataHandler;
        if (charDataHandler) {
          if (MUST_CONVERT(enc, s)) {
            for (;;) {
              ICHAR *dataPtr = (ICHAR *)parser->m_dataBuf;
              const enum XML_Convert_Result convert_res = XmlConvert(enc, &s, next, &dataPtr, (ICHAR *)parser->m_dataBufEnd);
              *eventEndPP = next;
              charDataHandler(parser->m_handlerArg, parser->m_dataBuf,
                              (int)(dataPtr - (ICHAR *)parser->m_dataBuf));
              if ((convert_res == XML_CONVERT_COMPLETED) || (convert_res == XML_CONVERT_INPUT_INCOMPLETE))
                break;
              *eventPP = s;
            }
          }
          else
            charDataHandler(parser->m_handlerArg,
                            (XML_Char *)s,
                            (int)((XML_Char *)next - (XML_Char *)s));
        }
        else if (parser->m_defaultHandler)
          reportDefault(parser, enc, s, next);
      }
      break;
    case 131:
      *eventPP = next;
      return XML_ERROR_INVALID_TOKEN;
    case 128:
      if (haveMore) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      return XML_ERROR_PARTIAL_CHAR;
    case 129:
    case 130:
      if (haveMore) {
        *nextPtr = s;
        return XML_ERROR_NONE;
      }
      return XML_ERROR_UNCLOSED_CDATA_SECTION;
    default:







      *eventPP = next;
      return XML_ERROR_UNEXPECTED_STATE;

    }

    *eventPP = s = next;
    switch (parser->m_parsingStatus.parsing) {
    case 135:
      *nextPtr = next;
      return XML_ERROR_NONE;
    case 136:
      return XML_ERROR_ABORTED;
    default: ;
    }
  }

}
