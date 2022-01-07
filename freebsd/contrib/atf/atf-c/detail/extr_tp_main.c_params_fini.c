
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int * m_tcname; int m_srcdir; int m_resfile; int m_config; } ;


 int atf_fs_path_fini (int *) ;
 int atf_map_fini (int *) ;
 int free (int *) ;

__attribute__((used)) static
void
params_fini(struct params *p)
{
    atf_map_fini(&p->m_config);
    atf_fs_path_fini(&p->m_resfile);
    atf_fs_path_fini(&p->m_srcdir);
    if (p->m_tcname != ((void*)0))
        free(p->m_tcname);
}
