
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int XML_Char ;
struct TYPE_4__ {int * storage; } ;
typedef TYPE_1__ ExtTest ;
typedef int CharData ;


 int CharData_CheckXMLChars (int *,int const*) ;
 int CharData_Init (int *) ;
 scalar_t__ XML_STATUS_ERROR ;
 int XML_SetCharacterDataHandler (int ,int ) ;
 int XML_SetUserData (int ,TYPE_1__*) ;
 int XML_TRUE ;
 scalar_t__ _XML_Parse_SINGLE_BYTES (int ,char const*,int,int ) ;
 int _xml_failure (int ,char const*,int) ;
 int ext_accumulate_characters ;
 int parser ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
_run_ext_character_check(const char *text,
                         ExtTest *test_data,
                         const XML_Char *expected,
                         const char *file, int line)
{
    CharData storage;

    CharData_Init(&storage);
    test_data->storage = &storage;
    XML_SetUserData(parser, test_data);
    XML_SetCharacterDataHandler(parser, ext_accumulate_characters);
    if (_XML_Parse_SINGLE_BYTES(parser, text, (int)strlen(text),
                                XML_TRUE) == XML_STATUS_ERROR)
        _xml_failure(parser, file, line);
    CharData_CheckXMLChars(&storage, expected);
}
