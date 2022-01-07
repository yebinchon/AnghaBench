
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,...) ;
 scalar_t__ isprint (unsigned char const) ;

void
uu_dump(FILE *out, const char *prefix, const void *buf, size_t len)
{
 const unsigned char *p = buf;
 int i;

 for (i = 0; i < len; i += 16) {
  int j;

  (void) fprintf(out, "%s", prefix);
  for (j = 0; j < 16 && i + j < len; j++) {
   (void) fprintf(out, "%2.2x ", p[i + j]);
  }
  for (; j < 16; j++) {
   (void) fprintf(out, "   ");
  }
  for (j = 0; j < 16 && i + j < len; j++) {
   (void) fprintf(out, "%c",
       isprint(p[i + j]) ? p[i + j] : '.');
  }
  (void) fprintf(out, "\n");
 }
}
