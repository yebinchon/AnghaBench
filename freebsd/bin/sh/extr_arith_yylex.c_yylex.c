
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int val; } ;


 int ARITH_ADD ;
 int ARITH_AND ;
 int ARITH_ASS ;
 int ARITH_BAD ;
 int ARITH_BAND ;
 int ARITH_BNOT ;
 int ARITH_BOR ;
 int ARITH_BXOR ;
 int ARITH_COLON ;
 int ARITH_DIV ;
 int ARITH_GE ;
 int ARITH_GT ;
 int ARITH_LE ;
 int ARITH_LPAREN ;
 int ARITH_LSHIFT ;
 int ARITH_LT ;
 int ARITH_MUL ;
 int ARITH_NE ;
 int ARITH_NOT ;
 int ARITH_NUM ;
 int ARITH_OR ;
 int ARITH_QMARK ;
 int ARITH_REM ;
 int ARITH_RPAREN ;
 int ARITH_RSHIFT ;
 int ARITH_SUB ;
 int ARITH_VAR ;
 char const* arith_buf ;
 int is_in_name (char const) ;
 int memcpy (char*,char const*,int) ;
 char* stalloc (int) ;
 int strtoarith_t (char const*,char**) ;
 TYPE_1__ yylval ;

int
yylex(void)
{
 int value;
 const char *buf = arith_buf;
 char *end;
 const char *p;

 for (;;) {
  value = *buf;
  switch (value) {
  case ' ':
  case '\t':
  case '\n':
   buf++;
   continue;
  default:
   return ARITH_BAD;
  case '0':
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
  case '8':
  case '9':
   yylval.val = strtoarith_t(buf, &end);
   arith_buf = end;
   return ARITH_NUM;
  case 'A':
  case 'B':
  case 'C':
  case 'D':
  case 'E':
  case 'F':
  case 'G':
  case 'H':
  case 'I':
  case 'J':
  case 'K':
  case 'L':
  case 'M':
  case 'N':
  case 'O':
  case 'P':
  case 'Q':
  case 'R':
  case 'S':
  case 'T':
  case 'U':
  case 'V':
  case 'W':
  case 'X':
  case 'Y':
  case 'Z':
  case '_':
  case 'a':
  case 'b':
  case 'c':
  case 'd':
  case 'e':
  case 'f':
  case 'g':
  case 'h':
  case 'i':
  case 'j':
  case 'k':
  case 'l':
  case 'm':
  case 'n':
  case 'o':
  case 'p':
  case 'q':
  case 'r':
  case 's':
  case 't':
  case 'u':
  case 'v':
  case 'w':
  case 'x':
  case 'y':
  case 'z':
   p = buf;
   while (buf++, is_in_name(*buf))
    ;
   yylval.name = stalloc(buf - p + 1);
   memcpy(yylval.name, p, buf - p);
   yylval.name[buf - p] = '\0';
   value = ARITH_VAR;
   goto out;
  case '=':
   value += ARITH_ASS - '=';
checkeq:
   buf++;
checkeqcur:
   if (*buf != '=')
    goto out;
   value += 11;
   break;
  case '>':
   switch (*++buf) {
   case '=':
    value += ARITH_GE - '>';
    break;
   case '>':
    value += ARITH_RSHIFT - '>';
    goto checkeq;
   default:
    value += ARITH_GT - '>';
    goto out;
   }
   break;
  case '<':
   switch (*++buf) {
   case '=':
    value += ARITH_LE - '<';
    break;
   case '<':
    value += ARITH_LSHIFT - '<';
    goto checkeq;
   default:
    value += ARITH_LT - '<';
    goto out;
   }
   break;
  case '|':
   if (*++buf != '|') {
    value += ARITH_BOR - '|';
    goto checkeqcur;
   }
   value += ARITH_OR - '|';
   break;
  case '&':
   if (*++buf != '&') {
    value += ARITH_BAND - '&';
    goto checkeqcur;
   }
   value += ARITH_AND - '&';
   break;
  case '!':
   if (*++buf != '=') {
    value += ARITH_NOT - '!';
    goto out;
   }
   value += ARITH_NE - '!';
   break;
  case 0:
   goto out;
  case '(':
   value += ARITH_LPAREN - '(';
   break;
  case ')':
   value += ARITH_RPAREN - ')';
   break;
  case '*':
   value += ARITH_MUL - '*';
   goto checkeq;
  case '/':
   value += ARITH_DIV - '/';
   goto checkeq;
  case '%':
   value += ARITH_REM - '%';
   goto checkeq;
  case '+':
   if (buf[1] == '+')
    return ARITH_BAD;
   value += ARITH_ADD - '+';
   goto checkeq;
  case '-':
   if (buf[1] == '-')
    return ARITH_BAD;
   value += ARITH_SUB - '-';
   goto checkeq;
  case '~':
   value += ARITH_BNOT - '~';
   break;
  case '^':
   value += ARITH_BXOR - '^';
   goto checkeq;
  case '?':
   value += ARITH_QMARK - '?';
   break;
  case ':':
   value += ARITH_COLON - ':';
   break;
  }
  break;
 }

 buf++;
out:
 arith_buf = buf;
 return value;
}
