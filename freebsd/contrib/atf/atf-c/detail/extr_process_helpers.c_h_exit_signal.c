
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int SIGKILL ;
 int assert (int ) ;
 int getpid () ;
 int kill (int ,int ) ;

__attribute__((used)) static
int
h_exit_signal(void)
{
    kill(getpid(), SIGKILL);
    assert(0);
    return EXIT_FAILURE;
}
