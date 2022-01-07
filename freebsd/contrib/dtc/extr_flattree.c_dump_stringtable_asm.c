
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data {char* val; int len; } ;
typedef int FILE ;


 int fprintf (int *,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void dump_stringtable_asm(FILE *f, struct data strbuf)
{
 const char *p;
 int len;

 p = strbuf.val;

 while (p < (strbuf.val + strbuf.len)) {
  len = strlen(p);
  fprintf(f, "\t.string \"%s\"\n", p);
  p += len+1;
 }
}
