
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_list_citer_t ;


 int PRE (int) ;
 int atf_equal_list_citer_list_citer (int ,int ) ;
 int atf_list_begin_c (int const*) ;
 void const* atf_list_citer_data (int ) ;
 int atf_list_citer_next (int ) ;
 int atf_list_end_c (int const*) ;
 size_t const atf_list_size (int const*) ;

const void *
atf_list_index_c(const atf_list_t *list, const size_t idx)
{
    atf_list_citer_t iter;

    PRE(idx < atf_list_size(list));

    iter = atf_list_begin_c(list);
    {
        size_t pos = 0;
        while (pos < idx &&
               !atf_equal_list_citer_list_citer((iter),
                                                atf_list_end_c(list))) {
            iter = atf_list_citer_next(iter);
            pos++;
        }
    }
    return atf_list_citer_data(iter);
}
