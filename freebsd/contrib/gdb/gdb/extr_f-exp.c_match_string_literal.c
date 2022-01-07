
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ptr; size_t length; } ;
struct TYPE_4__ {TYPE_1__ sval; } ;


 int CHECKBUF (int) ;
 int STRING_LITERAL ;
 char* lexptr ;
 char* tempbuf ;
 size_t tempbufindex ;
 TYPE_2__ yylval ;

__attribute__((used)) static int
match_string_literal ()
{
  char *tokptr = lexptr;

  for (tempbufindex = 0, tokptr++; *tokptr != '\0'; tokptr++)
    {
      CHECKBUF (1);
      if (*tokptr == *lexptr)
 {
   if (*(tokptr + 1) == *lexptr)
     tokptr++;
   else
     break;
 }
      tempbuf[tempbufindex++] = *tokptr;
    }
  if (*tokptr == '\0'
      || tempbufindex == 0)
    return 0;
  else
    {
      tempbuf[tempbufindex] = '\0';
      yylval.sval.ptr = tempbuf;
      yylval.sval.length = tempbufindex;
      lexptr = ++tokptr;
      return STRING_LITERAL;
    }
}
