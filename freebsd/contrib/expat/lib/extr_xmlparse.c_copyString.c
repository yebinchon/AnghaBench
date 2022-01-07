
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* (* malloc_fcn ) (int) ;} ;
typedef TYPE_1__ XML_Memory_Handling_Suite ;
typedef scalar_t__ XML_Char ;


 int memcpy (scalar_t__*,scalar_t__ const*,int) ;
 scalar_t__* stub1 (int) ;

__attribute__((used)) static XML_Char *
copyString(const XML_Char *s,
           const XML_Memory_Handling_Suite *memsuite)
{
    int charsRequired = 0;
    XML_Char *result;


    while (s[charsRequired] != 0) {
      charsRequired++;
    }

    charsRequired++;


    result = memsuite->malloc_fcn(charsRequired * sizeof(XML_Char));
    if (result == ((void*)0))
        return ((void*)0);

    memcpy(result, s, charsRequired * sizeof(XML_Char));
    return result;
}
