
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_writer {int total_written; int out; } ;
typedef int flex_int32_t ;


 int fwrite (void*,int,int,int ) ;

int yytbl_writen (struct yytbl_writer *wr, void *v, flex_int32_t len)
{
 int rv;

 rv = fwrite (v, 1, len, wr->out);
 if (rv != len)
  return -1;
 wr->total_written += len;
 return len;
}
