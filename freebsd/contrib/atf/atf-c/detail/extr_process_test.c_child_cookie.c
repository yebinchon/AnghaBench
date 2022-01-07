
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UNREACHABLE ;
 int exit (int ) ;
 int exit_v_notnull ;
 int exit_v_null ;

__attribute__((used)) static
void
child_cookie(void *v)
{
    if (v == ((void*)0))
        exit(exit_v_null);
    else
        exit(exit_v_notnull);

    UNREACHABLE;
}
