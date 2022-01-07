
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFLEN ;
 int error (char*) ;
 int * fgets (char*,int,int *) ;
 char* line ;
 char* linep ;
 int linno ;

__attribute__((used)) static int
readline(FILE *infp)
{
 char *p;

 if (fgets(line, 1024, infp) == ((void*)0))
  return 0;
 for (p = line ; *p != '#' && *p != '\n' && *p != '\0' ; p++);
 while (p > line && (p[-1] == ' ' || p[-1] == '\t'))
  p--;
 *p = '\0';
 linep = line;
 linno++;
 if (p - line > BUFLEN)
  error("Line too long");
 return 1;
}
