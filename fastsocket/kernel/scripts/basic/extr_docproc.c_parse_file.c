
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int MAXLINESZ ;
 int defaultline (char*) ;
 int docsection (char*,char*) ;
 int externalfunctions (char*) ;
 int fflush (int ) ;
 scalar_t__ fgets (char*,int,int *) ;
 int internalfunctions (char*) ;
 int isspace (char) ;
 int singlefunctions (char*,char*) ;
 int stdout ;
 int symbolsonly (char*) ;

__attribute__((used)) static void parse_file(FILE *infile)
{
 char line[MAXLINESZ];
 char * s;
 while (fgets(line, MAXLINESZ, infile)) {
  if (line[0] == '!') {
   s = line + 2;
   switch (line[1]) {
    case 'E':
     while (*s && !isspace(*s)) s++;
     *s = '\0';
     externalfunctions(line+2);
     break;
    case 'I':
     while (*s && !isspace(*s)) s++;
     *s = '\0';
     internalfunctions(line+2);
     break;
    case 'D':
     while (*s && !isspace(*s)) s++;
                                        *s = '\0';
                                        symbolsonly(line+2);
                                        break;
    case 'F':

     while (*s && !isspace(*s)) s++;
     *s++ = '\0';

     while (isspace(*s))
      s++;
     singlefunctions(line +2, s);
     break;
    case 'P':

     while (*s && !isspace(*s)) s++;
     *s++ = '\0';

     while (isspace(*s))
      s++;
     docsection(line + 2, s);
     break;
    default:
     defaultline(line);
   }
  }
  else {
   defaultline(line);
  }
 }
 fflush(stdout);
}
