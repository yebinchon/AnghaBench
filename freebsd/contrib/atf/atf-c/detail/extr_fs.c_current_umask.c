
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const mode_t ;


 int const umask (int const) ;

__attribute__((used)) static
mode_t
current_umask(void)
{
    const mode_t current = umask(0);
    (void)umask(current);
    return current;
}
