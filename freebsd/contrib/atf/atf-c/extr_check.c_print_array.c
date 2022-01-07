
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
print_array(const char *const *array, const char *pfx)
{
    const char *const *ptr;

    printf("%s", pfx);
    for (ptr = array; *ptr != ((void*)0); ptr++)
        printf(" %s", *ptr);
    printf("\n");
}
