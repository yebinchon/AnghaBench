
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
dump_blob(const char *name, const void *data, size_t len)
{
 const unsigned char *buf;
 size_t u;

 buf = data;
 fprintf(stderr, "%s (len = %lu)", name, (unsigned long)len);
 for (u = 0; u < len; u ++) {
  if ((u & 15) == 0) {
   fprintf(stderr, "\n%08lX  ", (unsigned long)u);
  } else if ((u & 7) == 0) {
   fprintf(stderr, " ");
  }
  fprintf(stderr, " %02x", buf[u]);
 }
 fprintf(stderr, "\n");
}
