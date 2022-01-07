
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct print_file_list {unsigned int maxline; char** linemap; } ;


 int fwrite (char const*,int,int ,int ) ;
 int putchar (char) ;
 int stdout ;
 int strcspn (char const*,char*) ;

__attribute__((used)) static void
print_line (struct print_file_list *p, unsigned int line)
{
  const char *l;

  --line;
  if (line >= p->maxline)
    return;
  l = p->linemap [line];
  fwrite (l, 1, strcspn (l, "\n\r"), stdout);
  putchar ('\n');
}
