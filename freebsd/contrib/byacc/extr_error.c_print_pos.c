
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UCH (char const) ;
 scalar_t__ isprint (int ) ;
 int putc (char const,int ) ;
 int stderr ;

__attribute__((used)) static void
print_pos(const char *st_line, const char *st_cptr)
{
    const char *s;

    if (st_line == 0)
 return;
    for (s = st_line; *s != '\n'; ++s)
    {
 if (isprint(UCH(*s)) || *s == '\t')
     putc(*s, stderr);
 else
     putc('?', stderr);
    }
    putc('\n', stderr);
    for (s = st_line; s < st_cptr; ++s)
    {
 if (*s == '\t')
     putc('\t', stderr);
 else
     putc(' ', stderr);
    }
    putc('^', stderr);
    putc('\n', stderr);
}
