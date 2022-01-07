
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (int *,char const*) ;
 int ** testlist ;

__attribute__((used)) static int find_test_name(const char *testname) {
    int i;
    for (i = 0; testlist[i] != ((void*)0); i++) {
        if (!strcmp(testlist[i], testname)) {
            return 1;
        }
    }
    return 0;
}
