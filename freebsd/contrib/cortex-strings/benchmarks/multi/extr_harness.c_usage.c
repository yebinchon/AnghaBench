
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {char* name; } ;


 char* VERSION ;
 int exit (int) ;
 int printf (char*,...) ;
 struct test* tests ;

__attribute__((used)) static void usage(const char* name)
{
  printf("%s %s: run a string related benchmark.\n"
         "usage: %s [-c block-size] [-l loop-count] [-a alignment|src_alignment:dst_alignment] [-f] [-t test-name] [-r run-id]\n"
         , name, VERSION, name);

  printf("Tests:");

  for (const struct test *ptest = tests; ptest->name != ((void*)0); ptest++)
    {
      printf(" %s", ptest->name);
    }

  printf("\n");

  exit(-1);
}
