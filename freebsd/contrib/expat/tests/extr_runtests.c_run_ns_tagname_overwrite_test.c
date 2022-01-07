
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XML_Char ;
typedef int CharData ;


 int CharData_CheckXMLChars (int *,int const*) ;
 int CharData_Init (int *) ;
 scalar_t__ XML_STATUS_ERROR ;
 int XML_SetElementHandler (int ,int ,int ) ;
 int XML_SetUserData (int ,int *) ;
 int XML_TRUE ;
 scalar_t__ _XML_Parse_SINGLE_BYTES (int ,char const*,int,int ) ;
 int overwrite_end_checker ;
 int overwrite_start_checker ;
 int parser ;
 scalar_t__ strlen (char const*) ;
 int xml_failure (int ) ;

__attribute__((used)) static void
run_ns_tagname_overwrite_test(const char *text, const XML_Char *result)
{
    CharData storage;
    CharData_Init(&storage);
    XML_SetUserData(parser, &storage);
    XML_SetElementHandler(parser,
                          overwrite_start_checker, overwrite_end_checker);
    if (_XML_Parse_SINGLE_BYTES(parser, text, (int)strlen(text), XML_TRUE) == XML_STATUS_ERROR)
        xml_failure(parser);
    CharData_CheckXMLChars(&storage, result);
}
