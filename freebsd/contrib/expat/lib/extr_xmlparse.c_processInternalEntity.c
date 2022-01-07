
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef enum XML_Error { ____Placeholder_XML_Error } XML_Error ;
typedef TYPE_2__* XML_Parser ;
typedef int XML_Bool ;
struct TYPE_13__ {int processed; int open; scalar_t__ is_param; scalar_t__ textLen; scalar_t__ textPtr; } ;
struct TYPE_12__ {struct TYPE_12__* next; int * internalEventEndPtr; int * internalEventPtr; int betweenDecl; int startTagLevel; TYPE_4__* entity; } ;
struct TYPE_10__ {scalar_t__ parsing; } ;
struct TYPE_11__ {TYPE_3__* m_freeInternalEntities; TYPE_3__* m_openInternalEntities; int m_processor; TYPE_1__ m_parsingStatus; int m_internalEncoding; int m_tagLevel; } ;
typedef TYPE_3__ OPEN_INTERNAL_ENTITY ;
typedef TYPE_4__ ENTITY ;


 scalar_t__ MALLOC (TYPE_2__*,int) ;
 int XML_ERROR_NONE ;
 int XML_ERROR_NO_MEMORY ;
 int XML_FALSE ;
 scalar_t__ XML_SUSPENDED ;
 int XML_TRUE ;
 int XmlPrologTok (int ,char const*,char const*,char const**) ;
 int doContent (TYPE_2__*,int ,int ,char const*,char const*,char const**,int ) ;
 int doProlog (TYPE_2__*,int ,char const*,char const*,int,char const*,char const**,int ) ;
 int internalEntityProcessor ;

__attribute__((used)) static enum XML_Error
processInternalEntity(XML_Parser parser, ENTITY *entity,
                      XML_Bool betweenDecl)
{
  const char *textStart, *textEnd;
  const char *next;
  enum XML_Error result;
  OPEN_INTERNAL_ENTITY *openEntity;

  if (parser->m_freeInternalEntities) {
    openEntity = parser->m_freeInternalEntities;
    parser->m_freeInternalEntities = openEntity->next;
  }
  else {
    openEntity = (OPEN_INTERNAL_ENTITY *)MALLOC(parser, sizeof(OPEN_INTERNAL_ENTITY));
    if (!openEntity)
      return XML_ERROR_NO_MEMORY;
  }
  entity->open = XML_TRUE;
  entity->processed = 0;
  openEntity->next = parser->m_openInternalEntities;
  parser->m_openInternalEntities = openEntity;
  openEntity->entity = entity;
  openEntity->startTagLevel = parser->m_tagLevel;
  openEntity->betweenDecl = betweenDecl;
  openEntity->internalEventPtr = ((void*)0);
  openEntity->internalEventEndPtr = ((void*)0);
  textStart = (char *)entity->textPtr;
  textEnd = (char *)(entity->textPtr + entity->textLen);

  next = textStart;
    result = doContent(parser, parser->m_tagLevel, parser->m_internalEncoding, textStart,
                       textEnd, &next, XML_FALSE);

  if (result == XML_ERROR_NONE) {
    if (textEnd != next && parser->m_parsingStatus.parsing == XML_SUSPENDED) {
      entity->processed = (int)(next - textStart);
      parser->m_processor = internalEntityProcessor;
    }
    else {
      entity->open = XML_FALSE;
      parser->m_openInternalEntities = openEntity->next;

      openEntity->next = parser->m_freeInternalEntities;
      parser->m_freeInternalEntities = openEntity;
    }
  }
  return result;
}
