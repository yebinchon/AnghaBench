
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nfailures; } ;
typedef TYPE_1__ SRunner ;


 int CK_VERBOSE ;
 char* _check_current_filename ;
 char* _check_current_function ;
 int _check_current_lineno ;
 int printf (char*,char*,int,char*) ;

__attribute__((used)) static void
add_failure(SRunner *runner, int verbosity)
{
    runner->nfailures++;
    if (verbosity >= CK_VERBOSE) {
        printf("%s:%d: %s\n", _check_current_filename,
               _check_current_lineno, _check_current_function);
    }
}
