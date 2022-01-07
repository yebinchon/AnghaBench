
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ exclude ;
 int find_test_name (char const*) ;
 int list_tests ;
 int * testlist ;

__attribute__((used)) static int should_test_run(const char *testname) {
    int found = 0;
    if (list_tests == 1) {
        return 0;
    }
    if (testlist == ((void*)0)) {
        return 1;
    }
    found = find_test_name(testname);
    if ((found && !exclude) || (!found && exclude)) {
        return 1;
    }
    return 0;
}
