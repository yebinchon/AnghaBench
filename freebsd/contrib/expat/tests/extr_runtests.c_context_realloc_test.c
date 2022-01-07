
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_1; int * member_0; } ;
typedef TYPE_1__ ExtOption ;


 int * XCS (char*) ;
 int XML_PARAM_ENTITY_PARSING_ALWAYS ;
 scalar_t__ XML_STATUS_ERROR ;
 int XML_SetExternalEntityRefHandler (int ,int ) ;
 int XML_SetParamEntityParsing (int ,int ) ;
 int XML_SetUserData (int ,TYPE_1__*) ;
 int XML_TRUE ;
 scalar_t__ _XML_Parse_SINGLE_BYTES (int ,char const*,int,int ) ;
 int external_entity_optioner ;
 int fail (char*) ;
 int nsalloc_setup () ;
 int nsalloc_teardown () ;
 int parser ;
 int reallocation_count ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
context_realloc_test(const char *text)
{
    ExtOption options[] = {
        { XCS("foo"), "<!ELEMENT e EMPTY>"},
        { XCS("bar"), "<e/>" },
        { ((void*)0), ((void*)0) }
    };
    int i;
    const int max_realloc_count = 6;

    for (i = 0; i < max_realloc_count; i++) {
        reallocation_count = i;
        XML_SetUserData(parser, options);
        XML_SetParamEntityParsing(parser, XML_PARAM_ENTITY_PARSING_ALWAYS);
        XML_SetExternalEntityRefHandler(parser, external_entity_optioner);
        if (_XML_Parse_SINGLE_BYTES(parser, text, (int)strlen(text),
                                    XML_TRUE) != XML_STATUS_ERROR)
            break;

        nsalloc_teardown();
        nsalloc_setup();
    }
    if (i == 0)
        fail("Parsing worked despite failing reallocations");
    else if (i == max_realloc_count)
        fail("Parsing failed even at max reallocation count");
}
