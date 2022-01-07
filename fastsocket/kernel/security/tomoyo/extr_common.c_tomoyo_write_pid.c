
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {int read_step; int read_eof; int write_buf; } ;


 int strict_strtoul (int ,int,unsigned long*) ;

__attribute__((used)) static int tomoyo_write_pid(struct tomoyo_io_buffer *head)
{
 unsigned long pid;

 strict_strtoul(head->write_buf, 10, &pid);
 head->read_step = (int) pid;
 head->read_eof = 0;
 return 0;
}
