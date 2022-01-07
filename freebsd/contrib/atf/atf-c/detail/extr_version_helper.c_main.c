
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 char* PACKAGE_VERSION ;
 int printf (char*,char*) ;

int
main(void)
{
    printf("%s\n", PACKAGE_VERSION);
    return EXIT_SUCCESS;
}
