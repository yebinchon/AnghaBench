
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct params {int m_do_list; int m_srcdir; int m_resfile; int m_config; int m_tcpart; int * m_tcname; } ;
typedef int atf_error_t ;


 int BODY ;
 int argv0_to_dir (char const*,int *) ;
 int atf_fs_path_fini (int *) ;
 int atf_fs_path_init_fmt (int *,char*) ;
 scalar_t__ atf_is_error (int ) ;
 int atf_map_init (int *) ;

__attribute__((used)) static
atf_error_t
params_init(struct params *p, const char *argv0)
{
    atf_error_t err;

    p->m_do_list = 0;
    p->m_tcname = ((void*)0);
    p->m_tcpart = BODY;

    err = argv0_to_dir(argv0, &p->m_srcdir);
    if (atf_is_error(err))
        return err;

    err = atf_fs_path_init_fmt(&p->m_resfile, "/dev/stdout");
    if (atf_is_error(err)) {
        atf_fs_path_fini(&p->m_srcdir);
        return err;
    }

    err = atf_map_init(&p->m_config);
    if (atf_is_error(err)) {
        atf_fs_path_fini(&p->m_resfile);
        atf_fs_path_fini(&p->m_srcdir);
        return err;
    }

    return err;
}
