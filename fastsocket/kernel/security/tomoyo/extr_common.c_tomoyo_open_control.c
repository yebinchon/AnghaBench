
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tomoyo_io_buffer {int readbuf_size; int writebuf_size; struct tomoyo_io_buffer* read_buf; void* write_buf; int * write; int * read; int io_sem; } ;
struct file {int f_mode; struct tomoyo_io_buffer* private_data; } ;


 int ENOMEM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int mutex_init (int *) ;
 void* tomoyo_alloc (int) ;
 int tomoyo_free (struct tomoyo_io_buffer*) ;
 int tomoyo_read_control (struct file*,int *,int ) ;
 int * tomoyo_read_domain_policy ;
 int * tomoyo_read_domain_profile ;
 int * tomoyo_read_exception_policy ;
 int * tomoyo_read_manager_policy ;
 int * tomoyo_read_memory_counter ;
 int * tomoyo_read_pid ;
 int * tomoyo_read_profile ;
 int * tomoyo_read_self_domain ;
 int * tomoyo_read_version ;
 int * tomoyo_write_domain_policy ;
 int * tomoyo_write_domain_profile ;
 int * tomoyo_write_exception_policy ;
 int * tomoyo_write_manager_policy ;
 int * tomoyo_write_memory_quota ;
 int * tomoyo_write_pid ;
 int * tomoyo_write_profile ;

__attribute__((used)) static int tomoyo_open_control(const u8 type, struct file *file)
{
 struct tomoyo_io_buffer *head = tomoyo_alloc(sizeof(*head));

 if (!head)
  return -ENOMEM;
 mutex_init(&head->io_sem);
 switch (type) {
 case 136:

  head->write = tomoyo_write_domain_policy;
  head->read = tomoyo_read_domain_policy;
  break;
 case 134:

  head->write = tomoyo_write_exception_policy;
  head->read = tomoyo_read_exception_policy;
  break;
 case 129:

  head->read = tomoyo_read_self_domain;
  break;
 case 135:

  head->write = tomoyo_write_domain_profile;
  head->read = tomoyo_read_domain_profile;
  break;
 case 131:

  head->write = tomoyo_write_pid;
  head->read = tomoyo_read_pid;
  break;
 case 128:

  head->read = tomoyo_read_version;
  head->readbuf_size = 128;
  break;
 case 132:

  head->write = tomoyo_write_memory_quota;
  head->read = tomoyo_read_memory_counter;
  head->readbuf_size = 512;
  break;
 case 130:

  head->write = tomoyo_write_profile;
  head->read = tomoyo_read_profile;
  break;
 case 133:

  head->write = tomoyo_write_manager_policy;
  head->read = tomoyo_read_manager_policy;
  break;
 }
 if (!(file->f_mode & FMODE_READ)) {




  head->read = ((void*)0);
 } else {
  if (!head->readbuf_size)
   head->readbuf_size = 4096 * 2;
  head->read_buf = tomoyo_alloc(head->readbuf_size);
  if (!head->read_buf) {
   tomoyo_free(head);
   return -ENOMEM;
  }
 }
 if (!(file->f_mode & FMODE_WRITE)) {




  head->write = ((void*)0);
 } else if (head->write) {
  head->writebuf_size = 4096 * 2;
  head->write_buf = tomoyo_alloc(head->writebuf_size);
  if (!head->write_buf) {
   tomoyo_free(head->read_buf);
   tomoyo_free(head);
   return -ENOMEM;
  }
 }
 file->private_data = head;







 if (type == 129)
  tomoyo_read_control(file, ((void*)0), 0);
 return 0;
}
