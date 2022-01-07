
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum XML_Error { ____Placeholder_XML_Error } XML_Error ;
typedef TYPE_1__* XML_Parser ;
struct TYPE_7__ {int* map; int * data; int (* release ) (int *) ;int * convert; } ;
typedef TYPE_2__ XML_Encoding ;
typedef int XML_Char ;
struct TYPE_6__ {int * m_encoding; int (* m_unknownEncodingRelease ) (int *) ;int * m_unknownEncodingData; int m_unknownEncodingMem; scalar_t__ m_ns; int m_unknownEncodingHandlerData; scalar_t__ (* m_unknownEncodingHandler ) (int ,int const*,TYPE_2__*) ;} ;
typedef int ENCODING ;


 int MALLOC (TYPE_1__*,int ) ;
 int XML_ERROR_NONE ;
 int XML_ERROR_NO_MEMORY ;
 int XML_ERROR_UNKNOWN_ENCODING ;
 int * XmlInitUnknownEncoding (int ,int*,int *,int *) ;
 int * XmlInitUnknownEncodingNS (int ,int*,int *,int *) ;
 int XmlSizeOfUnknownEncoding () ;
 scalar_t__ stub1 (int ,int const*,TYPE_2__*) ;
 int stub2 (int *) ;
 int * stub3 (int ,int*,int *,int *) ;
 int stub4 (int *) ;

__attribute__((used)) static enum XML_Error
handleUnknownEncoding(XML_Parser parser, const XML_Char *encodingName)
{
  if (parser->m_unknownEncodingHandler) {
    XML_Encoding info;
    int i;
    for (i = 0; i < 256; i++)
      info.map[i] = -1;
    info.convert = ((void*)0);
    info.data = ((void*)0);
    info.release = ((void*)0);
    if (parser->m_unknownEncodingHandler(parser->m_unknownEncodingHandlerData, encodingName,
                               &info)) {
      ENCODING *enc;
      parser->m_unknownEncodingMem = MALLOC(parser, XmlSizeOfUnknownEncoding());
      if (!parser->m_unknownEncodingMem) {
        if (info.release)
          info.release(info.data);
        return XML_ERROR_NO_MEMORY;
      }
      enc = (parser->m_ns
             ? XmlInitUnknownEncodingNS
             : XmlInitUnknownEncoding)(parser->m_unknownEncodingMem,
                                       info.map,
                                       info.convert,
                                       info.data);
      if (enc) {
        parser->m_unknownEncodingData = info.data;
        parser->m_unknownEncodingRelease = info.release;
        parser->m_encoding = enc;
        return XML_ERROR_NONE;
      }
    }
    if (info.release != ((void*)0))
      info.release(info.data);
  }
  return XML_ERROR_UNKNOWN_ENCODING;
}
