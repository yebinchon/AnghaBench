
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 char* hash_function_name (int) ;
 int stderr ;

__attribute__((used)) static void
print_hashes(unsigned hh, unsigned hh2)
{
 int i;

 for (i = 0; i < 8; i ++) {
  const char *name;

  name = hash_function_name(i);
  if (((hh >> i) & 1) != 0) {
   fprintf(stderr, " %s", name);
  } else if (((hh2 >> i) & 1) != 0) {
   fprintf(stderr, " (%s)", name);
  }
 }
}
