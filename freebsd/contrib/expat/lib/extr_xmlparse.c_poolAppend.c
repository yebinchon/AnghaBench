
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum XML_Convert_Result { ____Placeholder_XML_Convert_Result } XML_Convert_Result ;
typedef int XML_Char ;
struct TYPE_4__ {int * start; scalar_t__ end; int ptr; } ;
typedef TYPE_1__ STRING_POOL ;
typedef int ICHAR ;
typedef int ENCODING ;


 int const XML_CONVERT_COMPLETED ;
 int const XML_CONVERT_INPUT_INCOMPLETE ;
 int XmlConvert (int const*,char const**,char const*,int **,int *) ;
 int poolGrow (TYPE_1__*) ;

__attribute__((used)) static XML_Char *
poolAppend(STRING_POOL *pool, const ENCODING *enc,
           const char *ptr, const char *end)
{
  if (!pool->ptr && !poolGrow(pool))
    return ((void*)0);
  for (;;) {
    const enum XML_Convert_Result convert_res = XmlConvert(enc, &ptr, end, (ICHAR **)&(pool->ptr), (ICHAR *)pool->end);
    if ((convert_res == XML_CONVERT_COMPLETED) || (convert_res == XML_CONVERT_INPUT_INCOMPLETE))
      break;
    if (!poolGrow(pool))
      return ((void*)0);
  }
  return pool->start;
}
