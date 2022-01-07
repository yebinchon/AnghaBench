
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int die (char*,int ) ;
 int fgetc (int *) ;
 int filename ;
 scalar_t__ isdigit (int) ;
 scalar_t__ isspace (int) ;

__attribute__((used)) static unsigned int get_number(FILE *fp)
{
    int c, val;


    do {
 c = fgetc(fp);
 if (c == EOF)
     die("%s: end of file\n", filename);
 if (c == '#') {

     do {
  c = fgetc(fp);
  if (c == EOF)
      die("%s: end of file\n", filename);
     } while (c != '\n');
 }
    } while (isspace(c));


    val = 0;
    while (isdigit(c)) {
 val = 10*val+c-'0';
 c = fgetc(fp);
 if (c == EOF)
     die("%s: end of file\n", filename);
    }
    return val;
}
