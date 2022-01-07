
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {int read_eof; } ;
typedef int buffer ;


 unsigned int atomic_read (int *) ;
 int memset (char*,int ,int) ;
 int snprintf (char*,int,char*,int) ;
 unsigned int tomoyo_allocated_memory_for_elements ;
 unsigned int tomoyo_allocated_memory_for_savename ;
 int tomoyo_dynamic_memory_size ;
 int tomoyo_io_printf (struct tomoyo_io_buffer*,char*,unsigned int const,...) ;
 int tomoyo_quota_for_elements ;
 int tomoyo_quota_for_savename ;

int tomoyo_read_memory_counter(struct tomoyo_io_buffer *head)
{
 if (!head->read_eof) {
  const unsigned int shared
   = tomoyo_allocated_memory_for_savename;
  const unsigned int private
   = tomoyo_allocated_memory_for_elements;
  const unsigned int dynamic
   = atomic_read(&tomoyo_dynamic_memory_size);
  char buffer[64];

  memset(buffer, 0, sizeof(buffer));
  if (tomoyo_quota_for_savename)
   snprintf(buffer, sizeof(buffer) - 1,
     "   (Quota: %10u)",
     tomoyo_quota_for_savename);
  else
   buffer[0] = '\0';
  tomoyo_io_printf(head, "Shared:  %10u%s\n", shared, buffer);
  if (tomoyo_quota_for_elements)
   snprintf(buffer, sizeof(buffer) - 1,
     "   (Quota: %10u)",
     tomoyo_quota_for_elements);
  else
   buffer[0] = '\0';
  tomoyo_io_printf(head, "Private: %10u%s\n", private, buffer);
  tomoyo_io_printf(head, "Dynamic: %10u\n", dynamic);
  tomoyo_io_printf(head, "Total:   %10u\n",
     shared + private + dynamic);
  head->read_eof = 1;
 }
 return 0;
}
