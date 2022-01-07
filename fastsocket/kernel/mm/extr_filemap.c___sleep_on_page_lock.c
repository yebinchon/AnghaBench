
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_schedule () ;

__attribute__((used)) static int __sleep_on_page_lock(void *word)
{
 io_schedule();
 return 0;
}
