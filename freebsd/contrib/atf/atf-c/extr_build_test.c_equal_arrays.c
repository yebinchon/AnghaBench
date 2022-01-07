
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const* const,char*) ;

__attribute__((used)) static
bool
equal_arrays(const char *const *exp_array, char **actual_array)
{
    bool equal;

    if (*exp_array == ((void*)0) && *actual_array == ((void*)0))
        equal = 1;
    else if (*exp_array == ((void*)0) || *actual_array == ((void*)0))
        equal = 0;
    else {
        equal = 1;
        while (*actual_array != ((void*)0)) {
            if (*exp_array == ((void*)0) || strcmp(*exp_array, *actual_array) != 0) {
                equal = 0;
                break;
            }
            exp_array++;
            actual_array++;
        }
    }

    return equal;
}
