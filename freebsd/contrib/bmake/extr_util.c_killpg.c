
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill (int,int) ;

int
killpg(int pid, int sig)
{
    return kill(-pid, sig);
}
