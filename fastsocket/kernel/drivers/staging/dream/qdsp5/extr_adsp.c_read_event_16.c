
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int * read_event_addr ;
 size_t read_event_size ;

__attribute__((used)) static void read_event_16(void *buf, size_t len)
{
 uint16_t *dst = buf;
 uint16_t *src = read_event_addr;
 len /= 2;
 if (len > read_event_size)
  len = read_event_size;
 while (len--)
  *dst++ = *src++;
}
