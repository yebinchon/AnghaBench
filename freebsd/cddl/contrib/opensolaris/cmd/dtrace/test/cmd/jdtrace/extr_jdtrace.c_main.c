
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** alloca (int) ;
 int execvp (char*,char**) ;
 int perror (char*) ;

int
main(int argc, char **argv)
{
 int i, ac, has64;
 char **av, **p;

 ac = argc + 3;
 av = p = alloca(sizeof (char *) * ac);

 *p++ = "java";
 *p++ = "-jar";
 *p++ = "/opt/SUNWdtrt/lib/java/jdtrace.jar";

 argc--;
 argv++;

 for (i = 0; i < argc; i++) {
  p[i] = argv[i];
 }
 p[i] = ((void*)0);

 (void) execvp(av[0], av);

 perror("exec failed");

 return (0);
}
