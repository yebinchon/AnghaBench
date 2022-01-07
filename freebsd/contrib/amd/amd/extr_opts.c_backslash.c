
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XLOG_USER ;
 int plog (int ,char*,...) ;

__attribute__((used)) static char
backslash(char **p)
{
  char c;

  if ((*p)[1] == '\0') {
    plog(XLOG_USER, "Empty backslash escape");
    return **p;
  }

  if (**p == '\\') {
    (*p)++;
    switch (**p) {
    case 'g':
      c = '\007';
      break;
    case 'b':
      c = '\010';
      break;
    case 't':
      c = '\011';
      break;
    case 'n':
      c = '\012';
      break;
    case 'v':
      c = '\013';
      break;
    case 'f':
      c = '\014';
      break;
    case 'r':
      c = '\015';
      break;
    case 'e':
      c = '\033';
      break;
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
      {
 int cnt, val, ch;

 for (cnt = 0, val = 0; cnt < 3; cnt++) {
   ch = *(*p)++;
   if (ch < '0' || ch > '7') {
     (*p)--;
     break;
   }
   val = (val << 3) | (ch - '0');
 }

 if ((val & 0xffffff00) != 0)
   plog(XLOG_USER,
        "Too large character constant %u\n",
        val);
 c = (char) val;
 --(*p);
      }
      break;

    default:
      c = **p;
      break;
    }
  } else
    c = **p;

  return c;
}
