
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exec_data {char** m_argv; } ;


 int const_execvp (char*,char**) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static
void
exec_child(void *v)
{
    struct exec_data *ea = v;

    const_execvp(ea->m_argv[0], ea->m_argv);
    fprintf(stderr, "execvp(%s) failed: %s\n", ea->m_argv[0], strerror(errno));
    exit(127);
}
