
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child_print_data {char* member_0; } ;
struct base_stream {int (* fini ) (void*) ;int (* process ) (void*,int *) ;int m_sb_ptr; int (* init ) (void*) ;} ;
typedef int atf_process_status_t ;
typedef int atf_process_child_t ;


 int RE (int ) ;
 int atf_process_child_wait (int *,int *) ;
 int atf_process_fork (int *,int ,int ,int ,struct child_print_data*) ;
 int atf_process_status_fini (int *) ;
 int child_print ;
 int stub1 (void*) ;
 int stub2 (void*) ;
 int stub3 (void*,int *) ;
 int stub4 (void*,int *) ;
 int stub5 (void*) ;
 int stub6 (void*) ;

__attribute__((used)) static
void
do_fork(const struct base_stream *outfs, void *out,
        const struct base_stream *errfs, void *err)
{
    atf_process_child_t child;
    atf_process_status_t status;
    struct child_print_data cpd = { "msg" };

    outfs->init(out);
    errfs->init(err);

    RE(atf_process_fork(&child, child_print, outfs->m_sb_ptr,
                        errfs->m_sb_ptr, &cpd));
    if (outfs->process != ((void*)0))
        outfs->process(out, &child);
    if (errfs->process != ((void*)0))
        errfs->process(err, &child);
    RE(atf_process_child_wait(&child, &status));

    outfs->fini(out);
    errfs->fini(err);

    atf_process_status_fini(&status);
}
