
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 char* FIX_DOUBLE ;
 int TRUE ;
 char* quote_delimiter () ;
 size_t strcspn (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static bool
must_quote(char *string)
{
    bool code = FALSE;

    if (*string != '\0') {
 size_t len = strlen(string);
 if (strcspn(string, quote_delimiter()) != len)
     code = TRUE;
 else if (strcspn(string, "\n\t ") != len)
     code = TRUE;
 else
     code = (strcspn(string, FIX_DOUBLE) != len);
    } else {
 code = TRUE;
    }

    return code;
}
