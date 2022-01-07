
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 int printf (char*,char const*) ;

__attribute__((used)) static
int
h_echo(const char *msg)
{
    printf("%s\n", msg);
    return EXIT_SUCCESS;
}
