
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int env ;
 int siglongjmp (int ,int) ;

__attribute__((used)) static void
interrupt(int sig)
{
 siglongjmp(env, sig);
}
