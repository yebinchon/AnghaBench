
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* XML_Parser ;
typedef int XML_Char ;
struct TYPE_4__ {int parsing; } ;
struct TYPE_5__ {scalar_t__ m_hash_secret_salt; int m_paramEntityParsing; void* m_useForeignDTD; void* m_isParamEntity; TYPE_1__ m_parsingStatus; int * m_parentParser; int * m_unknownEncodingData; int * m_unknownEncodingRelease; int * m_unknownEncodingMem; scalar_t__ m_nSpecifiedAtts; int * m_inheritedBindings; int * m_tagStack; scalar_t__ m_tagLevel; int m_defaultExpandInternalEntities; int * m_openInternalEntities; int * m_positionPtr; int * m_eventEndPtr; int * m_eventPtr; int m_errorCode; int m_position; void* m_declAttributeIsId; void* m_declAttributeIsCdata; int * m_declNotationPublicId; int * m_declNotationName; int * m_declAttributeType; int * m_doctypePubid; int * m_doctypeSysid; int * m_doctypeName; int * m_declEntity; int * m_declAttributeId; int * m_declElementType; int * m_parseEndPtr; scalar_t__ m_parseEndByteIndex; int m_buffer; int m_bufferEnd; int m_bufferPtr; int * m_xmlDeclHandler; int * m_entityDeclHandler; int * m_attlistDeclHandler; int * m_elementDeclHandler; int * m_skippedEntityHandler; struct TYPE_5__* m_externalEntityRefHandlerArg; int * m_externalEntityRefHandler; int * m_notStandaloneHandler; int * m_endNamespaceDeclHandler; int * m_startNamespaceDeclHandler; int * m_notationDeclHandler; int * m_unparsedEntityDeclHandler; int * m_endDoctypeDeclHandler; int * m_startDoctypeDeclHandler; int * m_defaultHandler; int * m_endCdataSectionHandler; int * m_startCdataSectionHandler; int * m_commentHandler; int * m_processingInstructionHandler; int * m_characterDataHandler; int * m_endElementHandler; int * m_startElementHandler; int * m_handlerArg; int * m_userData; int m_encoding; int m_initEncoding; int * m_curBase; int m_mem; int m_protocolEncodingName; int m_prologState; int m_processor; } ;
typedef int POSITION ;


 int XML_ERROR_NONE ;
 void* XML_FALSE ;
 int XML_INITIALIZED ;
 int XML_PARAM_ENTITY_PARSING_NEVER ;
 int XML_TRUE ;
 int XmlInitEncoding (int *,int *,int ) ;
 int XmlPrologStateInit (int *) ;
 int copyString (int const*,int *) ;
 int memset (int *,int ,int) ;
 int prologInitProcessor ;

__attribute__((used)) static void
parserInit(XML_Parser parser, const XML_Char *encodingName)
{
  parser->m_processor = prologInitProcessor;
  XmlPrologStateInit(&parser->m_prologState);
  if (encodingName != ((void*)0)) {
    parser->m_protocolEncodingName = copyString(encodingName, &(parser->m_mem));
  }
  parser->m_curBase = ((void*)0);
  XmlInitEncoding(&parser->m_initEncoding, &parser->m_encoding, 0);
  parser->m_userData = ((void*)0);
  parser->m_handlerArg = ((void*)0);
  parser->m_startElementHandler = ((void*)0);
  parser->m_endElementHandler = ((void*)0);
  parser->m_characterDataHandler = ((void*)0);
  parser->m_processingInstructionHandler = ((void*)0);
  parser->m_commentHandler = ((void*)0);
  parser->m_startCdataSectionHandler = ((void*)0);
  parser->m_endCdataSectionHandler = ((void*)0);
  parser->m_defaultHandler = ((void*)0);
  parser->m_startDoctypeDeclHandler = ((void*)0);
  parser->m_endDoctypeDeclHandler = ((void*)0);
  parser->m_unparsedEntityDeclHandler = ((void*)0);
  parser->m_notationDeclHandler = ((void*)0);
  parser->m_startNamespaceDeclHandler = ((void*)0);
  parser->m_endNamespaceDeclHandler = ((void*)0);
  parser->m_notStandaloneHandler = ((void*)0);
  parser->m_externalEntityRefHandler = ((void*)0);
  parser->m_externalEntityRefHandlerArg = parser;
  parser->m_skippedEntityHandler = ((void*)0);
  parser->m_elementDeclHandler = ((void*)0);
  parser->m_attlistDeclHandler = ((void*)0);
  parser->m_entityDeclHandler = ((void*)0);
  parser->m_xmlDeclHandler = ((void*)0);
  parser->m_bufferPtr = parser->m_buffer;
  parser->m_bufferEnd = parser->m_buffer;
  parser->m_parseEndByteIndex = 0;
  parser->m_parseEndPtr = ((void*)0);
  parser->m_declElementType = ((void*)0);
  parser->m_declAttributeId = ((void*)0);
  parser->m_declEntity = ((void*)0);
  parser->m_doctypeName = ((void*)0);
  parser->m_doctypeSysid = ((void*)0);
  parser->m_doctypePubid = ((void*)0);
  parser->m_declAttributeType = ((void*)0);
  parser->m_declNotationName = ((void*)0);
  parser->m_declNotationPublicId = ((void*)0);
  parser->m_declAttributeIsCdata = XML_FALSE;
  parser->m_declAttributeIsId = XML_FALSE;
  memset(&parser->m_position, 0, sizeof(POSITION));
  parser->m_errorCode = XML_ERROR_NONE;
  parser->m_eventPtr = ((void*)0);
  parser->m_eventEndPtr = ((void*)0);
  parser->m_positionPtr = ((void*)0);
  parser->m_openInternalEntities = ((void*)0);
  parser->m_defaultExpandInternalEntities = XML_TRUE;
  parser->m_tagLevel = 0;
  parser->m_tagStack = ((void*)0);
  parser->m_inheritedBindings = ((void*)0);
  parser->m_nSpecifiedAtts = 0;
  parser->m_unknownEncodingMem = ((void*)0);
  parser->m_unknownEncodingRelease = ((void*)0);
  parser->m_unknownEncodingData = ((void*)0);
  parser->m_parentParser = ((void*)0);
  parser->m_parsingStatus.parsing = XML_INITIALIZED;





  parser->m_hash_secret_salt = 0;
}
