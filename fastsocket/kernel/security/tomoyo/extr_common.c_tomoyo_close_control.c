
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {struct tomoyo_io_buffer* write_buf; struct tomoyo_io_buffer* read_buf; } ;
struct file {struct tomoyo_io_buffer* private_data; } ;


 int tomoyo_free (struct tomoyo_io_buffer*) ;

__attribute__((used)) static int tomoyo_close_control(struct file *file)
{
 struct tomoyo_io_buffer *head = file->private_data;


 tomoyo_free(head->read_buf);
 head->read_buf = ((void*)0);
 tomoyo_free(head->write_buf);
 head->write_buf = ((void*)0);
 tomoyo_free(head);
 head = ((void*)0);
 file->private_data = ((void*)0);
 return 0;
}
