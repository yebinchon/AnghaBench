
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _check_current_filename ;
 char const* _check_current_function ;
 int _check_current_lineno ;

void
_check_set_test_info(char const *function, char const *filename, int lineno)
{
    _check_current_function = function;
    _check_current_lineno = lineno;
    _check_current_filename = filename;
}
