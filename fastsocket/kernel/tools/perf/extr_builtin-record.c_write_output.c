
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_record {int bytes_written; int output; } ;


 int pr_err (char*) ;
 int write (int ,void*,size_t) ;

__attribute__((used)) static int write_output(struct perf_record *rec, void *buf, size_t size)
{
 while (size) {
  int ret = write(rec->output, buf, size);

  if (ret < 0) {
   pr_err("failed to write\n");
   return -1;
  }

  size -= ret;
  buf += ret;

  rec->bytes_written += ret;
 }

 return 0;
}
