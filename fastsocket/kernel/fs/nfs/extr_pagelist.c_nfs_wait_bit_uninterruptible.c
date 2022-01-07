
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int io_schedule () ;

__attribute__((used)) static int nfs_wait_bit_uninterruptible(void *word)
{
 io_schedule();
 return 0;
}
