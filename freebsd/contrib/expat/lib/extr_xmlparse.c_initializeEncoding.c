
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum XML_Error { ____Placeholder_XML_Error } XML_Error ;
typedef int encodingBuf ;
typedef TYPE_1__* XML_Parser ;
struct TYPE_4__ {int* m_protocolEncodingName; int m_encoding; int m_initEncoding; scalar_t__ m_ns; } ;


 int XML_ERROR_NONE ;
 scalar_t__ XmlInitEncoding (int *,int *,char const*) ;
 scalar_t__ XmlInitEncodingNS (int *,int *,char const*) ;
 int handleUnknownEncoding (TYPE_1__*,char*) ;
 scalar_t__ stub1 (int *,int *,char const*) ;

__attribute__((used)) static enum XML_Error
initializeEncoding(XML_Parser parser)
{
  const char *s;
  s = parser->m_protocolEncodingName;

  if ((parser->m_ns ? XmlInitEncodingNS : XmlInitEncoding)(&parser->m_initEncoding, &parser->m_encoding, s))
    return XML_ERROR_NONE;
  return handleUnknownEncoding(parser, parser->m_protocolEncodingName);
}
