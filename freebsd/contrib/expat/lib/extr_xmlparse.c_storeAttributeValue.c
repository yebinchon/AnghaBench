
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum XML_Error { ____Placeholder_XML_Error } XML_Error ;
typedef int XML_Parser ;
typedef int XML_Bool ;
typedef int STRING_POOL ;
typedef int ENCODING ;


 int XML_ERROR_NONE ;
 int XML_ERROR_NO_MEMORY ;
 int XML_T (char) ;
 int appendAttributeValue (int ,int const*,int ,char const*,char const*,int *) ;
 int poolAppendChar (int *,int ) ;
 int poolChop (int *) ;
 int poolLastChar (int *) ;
 scalar_t__ poolLength (int *) ;

__attribute__((used)) static enum XML_Error
storeAttributeValue(XML_Parser parser, const ENCODING *enc, XML_Bool isCdata,
                    const char *ptr, const char *end,
                    STRING_POOL *pool)
{
  enum XML_Error result = appendAttributeValue(parser, enc, isCdata, ptr,
                                               end, pool);
  if (result)
    return result;
  if (!isCdata && poolLength(pool) && poolLastChar(pool) == 0x20)
    poolChop(pool);
  if (!poolAppendChar(pool, XML_T('\0')))
    return XML_ERROR_NO_MEMORY;
  return XML_ERROR_NONE;
}
