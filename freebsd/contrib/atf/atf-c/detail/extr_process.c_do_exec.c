
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exec_args {int m_prog; int m_argv; int (* m_prehook ) () ;} ;


 int EXIT_FAILURE ;
 int INV (int) ;
 char* atf_fs_path_cstring (int ) ;
 int const_execvp (char*,int ) ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;
 char* strerror (int const) ;
 int stub1 () ;

__attribute__((used)) static
void
do_exec(void *v)
{
    struct exec_args *ea = v;

    if (ea->m_prehook != ((void*)0))
        ea->m_prehook();

    const int ret = const_execvp(atf_fs_path_cstring(ea->m_prog), ea->m_argv);
    const int errnocopy = errno;
    INV(ret == -1);
    fprintf(stderr, "exec(%s) failed: %s\n",
            atf_fs_path_cstring(ea->m_prog), strerror(errnocopy));
    exit(EXIT_FAILURE);
}
