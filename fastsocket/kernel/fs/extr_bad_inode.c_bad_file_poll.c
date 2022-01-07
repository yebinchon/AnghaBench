
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLERR ;

__attribute__((used)) static unsigned int bad_file_poll(struct file *filp, poll_table *wait)
{
 return POLLERR;
}
