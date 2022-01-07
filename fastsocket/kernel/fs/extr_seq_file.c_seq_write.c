
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ count; scalar_t__ size; scalar_t__ buf; } ;


 int memcpy (scalar_t__,void const*,size_t) ;

int seq_write(struct seq_file *seq, const void *data, size_t len)
{
 if (seq->count + len < seq->size) {
  memcpy(seq->buf + seq->count, data, len);
  seq->count += len;
  return 0;
 }
 seq->count = seq->size;
 return -1;
}
