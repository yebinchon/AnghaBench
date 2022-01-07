
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum XML_Error { ____Placeholder_XML_Error } XML_Error ;


 int XML_GetErrorCode (int ) ;
 scalar_t__ XML_STATUS_OK ;
 int XML_TRUE ;
 scalar_t__ _XML_Parse_SINGLE_BYTES (int ,char const*,int,int ) ;
 int _fail_unless (int ,char const*,int,char const*) ;
 int _xml_failure (int ,char const*,int) ;
 int parser ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
_expect_failure(const char *text, enum XML_Error errorCode, const char *errorMessage,
                const char *file, int lineno)
{
    if (_XML_Parse_SINGLE_BYTES(parser, text, (int)strlen(text), XML_TRUE) == XML_STATUS_OK)


        _fail_unless(0, file, lineno, errorMessage);
    if (XML_GetErrorCode(parser) != errorCode)
        _xml_failure(parser, file, lineno);
}
