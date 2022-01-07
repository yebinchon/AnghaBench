
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pthread_atfork (int ,int ,int ) ;
 int uu_lockup ;
 int uu_release ;
 int uu_release_child ;

__attribute__((used)) static void
uu_init(void)
{
 (void) pthread_atfork(uu_lockup, uu_release, uu_release_child);
}
