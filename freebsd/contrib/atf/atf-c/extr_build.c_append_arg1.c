
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_list_t ;
typedef int atf_error_t ;


 int atf_list_append (int *,int ,int) ;
 int strdup (char const*) ;

__attribute__((used)) static
atf_error_t
append_arg1(const char *arg, atf_list_t *argv)
{
    return atf_list_append(argv, strdup(arg), 1);
}
