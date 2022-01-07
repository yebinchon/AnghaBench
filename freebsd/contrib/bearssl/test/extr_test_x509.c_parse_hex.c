
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*,long) ;
 int stderr ;
 unsigned char* xmalloc (size_t) ;

__attribute__((used)) static unsigned char *
parse_hex(const char *name, long linenum, const char *value, size_t *len)
{
 unsigned char *buf;

 buf = ((void*)0);
 for (;;) {
  size_t u, ptr;
  int acc, z;

  ptr = 0;
  acc = 0;
  z = 0;
  for (u = 0; value[u]; u ++) {
   int c;

   c = value[u];
   if (c >= '0' && c <= '9') {
    c -= '0';
   } else if (c >= 'A' && c <= 'F') {
    c -= 'A' - 10;
   } else if (c >= 'a' && c <= 'f') {
    c -= 'a' - 10;
   } else if (c == ' ' || c == ':') {
    continue;
   } else {
    fprintf(stderr, "invalid hexadecimal character"
     " in '%s' (line %ld)\n",
     name, linenum);
    exit(EXIT_FAILURE);
   }
   if (z) {
    if (buf != ((void*)0)) {
     buf[ptr] = (acc << 4) + c;
    }
    ptr ++;
   } else {
    acc = c;
   }
   z = !z;
  }
  if (z) {
   fprintf(stderr, "invalid hexadecimal value (partial"
    " byte) in '%s' (line %ld)\n",
    name, linenum);
   exit(EXIT_FAILURE);
  }
  if (buf == ((void*)0)) {
   buf = xmalloc(ptr);
  } else {
   *len = ptr;
   return buf;
  }
 }
}
