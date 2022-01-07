
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 scalar_t__ feof (int *) ;
 int getc (int *) ;

__attribute__((used)) static int
get_line(char *line, int size, FILE * f)
{
    char *ptr = line;
    int c;

    if (feof(f))
 return -1;
    while (size-- && ((c = getc(f)) != EOF) && (c != '\n'))
 *ptr++ = c;
    *ptr++ = '\0';
    return (int) (ptr - line);
}
