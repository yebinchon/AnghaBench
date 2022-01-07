
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {char* write_buf; } ;


 int sscanf (char*,char*,unsigned int*) ;
 unsigned int tomoyo_quota_for_elements ;
 unsigned int tomoyo_quota_for_savename ;

int tomoyo_write_memory_quota(struct tomoyo_io_buffer *head)
{
 char *data = head->write_buf;
 unsigned int size;

 if (sscanf(data, "Shared: %u", &size) == 1)
  tomoyo_quota_for_savename = size;
 else if (sscanf(data, "Private: %u", &size) == 1)
  tomoyo_quota_for_elements = size;
 return 0;
}
