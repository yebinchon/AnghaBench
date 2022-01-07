
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {int read_eof; } ;


 int tomoyo_io_printf (struct tomoyo_io_buffer*,char*) ;

__attribute__((used)) static int tomoyo_read_version(struct tomoyo_io_buffer *head)
{
 if (!head->read_eof) {
  tomoyo_io_printf(head, "2.2.0");
  head->read_eof = 1;
 }
 return 0;
}
