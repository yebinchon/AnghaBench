
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Buffer ;
typedef scalar_t__ Boolean ;


 int Buf_AddByte (int *,char) ;
 int Buf_AddBytes (int *,int,char const*) ;
 char* Buf_Destroy (int *,int ) ;
 int Buf_Init (int *,int ) ;
 scalar_t__ DEBUG (int ) ;
 int FALSE ;
 char* Shell_GetNewline () ;
 int VAR ;
 int debug_file ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ ismeta (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 size_t strlen (char const*) ;

__attribute__((used)) static char *
VarQuote(char *str, Boolean quoteDollar)
{

    Buffer buf;
    const char *newline;
    size_t nlen;

    if ((newline = Shell_GetNewline()) == ((void*)0))
     newline = "\\\n";
    nlen = strlen(newline);

    Buf_Init(&buf, 0);

    for (; *str != '\0'; str++) {
 if (*str == '\n') {
     Buf_AddBytes(&buf, nlen, newline);
     continue;
 }
 if (isspace((unsigned char)*str) || ismeta((unsigned char)*str))
     Buf_AddByte(&buf, '\\');
 Buf_AddByte(&buf, *str);
 if (quoteDollar && *str == '$')
     Buf_AddBytes(&buf, 2, "\\$");
    }

    str = Buf_Destroy(&buf, FALSE);
    if (DEBUG(VAR))
 fprintf(debug_file, "QuoteMeta: [%s]\n", str);
    return str;
}
