
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lineno; } ;





 int Cond_Eval (char*) ;
 int For_Accum (char*) ;
 int For_Eval (char*) ;
 int For_Run (int) ;
 int PARSE_FATAL ;
 int PARSE_RAW ;
 int PARSE_SKIP ;
 char* ParseGetLine (int ,int*) ;
 int Parse_Error (int ,char*) ;
 TYPE_1__* curFile ;

__attribute__((used)) static char *
ParseReadLine(void)
{
    char *line;
    int lineLength;
    int lineno;
    int rval;

    for (;;) {
 line = ParseGetLine(0, &lineLength);
 if (line == ((void*)0))
     return ((void*)0);

 if (line[0] != '.')
     return line;





 switch (Cond_Eval(line)) {
 case 128:

     do {
  line = ParseGetLine(PARSE_SKIP, &lineLength);
     } while (line && Cond_Eval(line) != 129);
     if (line == ((void*)0))
  break;
     continue;
 case 129:
     continue;
 case 130:

     rval = For_Eval(line);
     if (rval == 0)

  break;
     if (rval < 0)

  continue;

     lineno = curFile->lineno;

     do {
  line = ParseGetLine(PARSE_RAW, &lineLength);
  if (line == ((void*)0)) {
      Parse_Error(PARSE_FATAL,
        "Unexpected end of file in for loop.");
      break;
  }
     } while (For_Accum(line));

     For_Run(lineno);

     continue;
 }
 return (line);
    }
}
