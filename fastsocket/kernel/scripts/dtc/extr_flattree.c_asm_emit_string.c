
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,char*) ;

__attribute__((used)) static void asm_emit_string(void *e, char *str, int len)
{
 FILE *f = e;
 char c = 0;

 if (len != 0) {

  c = str[len];
  str[len] = '\0';
 }

 fprintf(f, "\t.string\t\"%s\"\n", str);

 if (len != 0) {
  str[len] = c;
 }
}
