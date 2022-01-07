
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_list_iter_t ;


 int PRE (int) ;
 int atf_equal_list_iter_list_iter (int ,int ) ;
 int atf_list_begin (int *) ;
 int atf_list_end (int *) ;
 void* atf_list_iter_data (int ) ;
 int atf_list_iter_next (int ) ;
 size_t const atf_list_size (int *) ;

void *
atf_list_index(atf_list_t *list, const size_t idx)
{
    atf_list_iter_t iter;

    PRE(idx < atf_list_size(list));

    iter = atf_list_begin(list);
    {
        size_t pos = 0;
        while (pos < idx &&
               !atf_equal_list_iter_list_iter((iter), atf_list_end(list))) {
            iter = atf_list_iter_next(iter);
            pos++;
        }
    }
    return atf_list_iter_data(iter);
}
