
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* P_ptr; char* P_end; int lineno; int * nextbuf; } ;
typedef TYPE_1__ IFile ;


 int PARSE_FATAL ;
 int PARSE_RAW ;
 int PARSE_SKIP ;
 int PARSE_WARNING ;
 int Parse_Error (int ,char*) ;
 TYPE_1__* curFile ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static char *
ParseGetLine(int flags, int *length)
{
    IFile *cf = curFile;
    char *ptr;
    char ch;
    char *line;
    char *line_end;
    char *escaped;
    char *comment;
    char *tp;


    for (;;) {
 cf->lineno++;
 line = cf->P_ptr;
 ptr = line;
 line_end = line;
 escaped = ((void*)0);
 comment = ((void*)0);
 for (;;) {
     if (cf->P_end != ((void*)0) && ptr == cf->P_end) {

  ch = 0;
  break;
     }
     ch = *ptr;
     if (ch == 0 || (ch == '\\' && ptr[1] == 0)) {
  if (cf->P_end == ((void*)0))

      break;

  while (ptr++ < cf->P_end) {
      if ((ch = *ptr) == '\n') {
   if (ptr > line && ptr[-1] == '\\')
       continue;
   Parse_Error(PARSE_WARNING,
       "Zero byte read from file, skipping rest of line.");
   break;
      }
  }
  if (cf->nextbuf != ((void*)0)) {




      break;
  }
  Parse_Error(PARSE_FATAL, "Zero byte read from file");
  return ((void*)0);
     }

     if (ch == '\\') {

  if (escaped == ((void*)0))
      escaped = ptr;
  if (ptr[1] == '\n')
      cf->lineno++;
  ptr += 2;
  line_end = ptr;
  continue;
     }
     if (ch == '#' && comment == ((void*)0)) {


  if (!(ptr > line && ptr[-1] == '['))
      comment = line_end;
     }
     ptr++;
     if (ch == '\n')
  break;
     if (!isspace((unsigned char)ch))

  line_end = ptr;
 }


 cf->P_ptr = ptr;


 if (line_end == line || comment == line) {
     if (ch == 0)

  return ((void*)0);

     continue;
 }


 *line_end = 0;

 if (flags & PARSE_RAW) {

     *length = line_end - line;
     return line;
 }

 if (flags & PARSE_SKIP) {

     if (line[0] != '.')
  continue;

 }
 break;
    }


    if (comment != ((void*)0) && line[0] != '\t') {
 line_end = comment;
 *line_end = 0;
    }


    if (escaped == ((void*)0)) {
 *length = line_end - line;
 return line;
    }


    tp = ptr = escaped;
    escaped = line;
    for (; ; *tp++ = ch) {
 ch = *ptr++;
 if (ch != '\\') {
     if (ch == 0)
  break;
     continue;
 }

 ch = *ptr++;
 if (ch == 0) {

     tp--;
     break;
 }

 if (ch == '#' && line[0] != '\t')

     continue;

 if (ch != '\n') {

     *tp++ = '\\';

     escaped = tp + 1;
     continue;
 }


 while (ptr[0] == ' ' || ptr[0] == '\t')
     ptr++;
 ch = ' ';
    }


    while (tp > escaped && isspace((unsigned char)tp[-1]))
 tp--;

    *tp = 0;
    *length = tp - line;
    return line;
}
