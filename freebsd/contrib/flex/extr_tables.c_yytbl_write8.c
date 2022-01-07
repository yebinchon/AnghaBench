
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_writer {size_t total_written; int out; } ;
typedef int flex_uint8_t ;


 size_t fwrite (int *,size_t,int,int ) ;

int yytbl_write8 (struct yytbl_writer *wr, flex_uint8_t v)
{
 size_t bytes, rv;

 bytes = sizeof (flex_uint8_t);
 rv = fwrite (&v, bytes, 1, wr->out);
 if (rv != 1)
  return -1;
 wr->total_written += bytes;
 return bytes;
}
