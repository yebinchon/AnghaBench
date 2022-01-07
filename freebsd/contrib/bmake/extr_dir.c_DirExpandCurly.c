
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Lst ;


 int Dir_Expand (char*,int ,int ) ;
 int Error (char*,char const*) ;
 int Lst_AtEnd (int ,char*) ;
 char* bmake_malloc (int) ;
 int free (char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static void
DirExpandCurly(const char *word, const char *brace, Lst path, Lst expansions)
{
    const char *end;
    const char *cp;
    const char *start;
    int bracelevel;


    char *file;
    int otherLen;


    char *cp2;


    start = brace+1;





    for (end = start, bracelevel = 0; *end != '\0'; end++) {
 if (*end == '{') {
     bracelevel++;
 } else if ((*end == '}') && (bracelevel-- == 0)) {
     break;
 }
    }
    if (*end == '\0') {
 Error("Unterminated {} clause \"%s\"", start);
 return;
    } else {
 end++;
    }
    otherLen = brace - word + strlen(end);

    for (cp = start; cp < end; cp++) {



 bracelevel = 0;
 while (*cp != ',') {
     if (*cp == '{') {
  bracelevel++;
     } else if ((*cp == '}') && (bracelevel-- <= 0)) {
  break;
     }
     cp++;
 }



 file = bmake_malloc(otherLen + cp - start + 1);
 if (brace != word) {
     strncpy(file, word, brace-word);
 }
 if (cp != start) {
     strncpy(&file[brace-word], start, cp-start);
 }
 strcpy(&file[(brace-word)+(cp-start)], end);






 for (cp2 = file; *cp2 != '\0'; cp2++) {
     switch(*cp2) {
     case '*':
     case '?':
     case '{':
     case '[':
  Dir_Expand(file, path, expansions);
  goto next;
     }
 }
 if (*cp2 == '\0') {




     (void)Lst_AtEnd(expansions, file);
 } else {
 next:
     free(file);
 }
 start = cp+1;
    }
}
