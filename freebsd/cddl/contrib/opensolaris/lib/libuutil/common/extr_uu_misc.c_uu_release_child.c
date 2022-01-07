
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * uu_panic_format ;
 scalar_t__ uu_panic_thread ;
 int uu_release () ;

__attribute__((used)) static void
uu_release_child(void)
{
 uu_panic_format = ((void*)0);
 uu_panic_thread = 0;

 uu_release();
}
