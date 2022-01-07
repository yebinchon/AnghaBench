
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t cur_pos ;
 int memcpy (int *,char const*,size_t) ;
 int resize_write_buffer (size_t) ;
 int * write_buffer ;

__attribute__((used)) static void write_bytes(const char *s, size_t len) {
  resize_write_buffer(len);
  memcpy(&write_buffer[cur_pos], s, len);
  cur_pos += len;
}
