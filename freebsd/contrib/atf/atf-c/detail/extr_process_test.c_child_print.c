
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_print_data {char* m_msg; } ;


 int EXIT_SUCCESS ;
 int exit (int ) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int stdout ;

__attribute__((used)) static
void
child_print(void *v)
{
    struct child_print_data *cpd = v;

    fprintf(stdout, "stdout: %s\n", cpd->m_msg);
    fprintf(stderr, "stderr: %s\n", cpd->m_msg);

    exit(EXIT_SUCCESS);
}
