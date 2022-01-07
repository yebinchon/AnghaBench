
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yytbl_writer {size_t total_written; int out; } ;
typedef int flex_uint32_t ;


 size_t fwrite (int *,size_t,int,int ) ;
 int htonl (int ) ;

int yytbl_write32 (struct yytbl_writer *wr, flex_uint32_t v)
{
 flex_uint32_t vnet;
 size_t bytes, rv;

 vnet = htonl (v);
 bytes = sizeof (flex_uint32_t);
 rv = fwrite (&vnet, bytes, 1, wr->out);
 if (rv != 1)
  return -1;
 wr->total_written += bytes;
 return bytes;
}
