
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LIST ;


 char* leaf_of (char*) ;
 scalar_t__ show_list (char*,int *,int) ;

__attribute__((used)) static bool
show_both_lists(char *input, LIST * d_list, LIST * f_list, bool keep)
{
    char *leaf = leaf_of(input);

    return show_list(leaf, d_list, keep) || show_list(leaf, f_list, keep);
}
