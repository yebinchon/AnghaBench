
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* curhdr ;
 int fprintf (int ,char*,...) ;
 int reset () ;
 int stderr ;

__attribute__((used)) static void
_expected(
 const char *who,
 const char *what,
 const char *where,
 int line)
{
 fprintf(stderr, "%s, expecting \"%s\" at \"%s\"\n", who, what, where);
 fprintf(stderr, "code line: %d, file %s\n", line,
     (curhdr ? curhdr : "NO FILE"));
 reset();
}
