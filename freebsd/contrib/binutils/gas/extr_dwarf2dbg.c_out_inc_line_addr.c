
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int addressT ;


 int emit_inc_line_addr (int,int ,int ,int) ;
 int frag_more (int) ;
 int size_inc_line_addr (int,int ) ;

__attribute__((used)) static void
out_inc_line_addr (int line_delta, addressT addr_delta)
{
  int len = size_inc_line_addr (line_delta, addr_delta);
  emit_inc_line_addr (line_delta, addr_delta, frag_more (len), len);
}
