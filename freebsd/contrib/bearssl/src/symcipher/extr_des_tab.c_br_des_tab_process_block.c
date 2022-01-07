
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int br_dec32be (unsigned char*) ;
 int br_des_do_IP (int *,int *) ;
 int br_des_do_invIP (int *,int *) ;
 int br_enc32be (unsigned char*,int ) ;
 int process_block_unit (int *,int *,int const*) ;

void
br_des_tab_process_block(unsigned num_rounds, const uint32_t *skey, void *block)
{
 unsigned char *buf;
 uint32_t l, r;

 buf = block;
 l = br_dec32be(buf);
 r = br_dec32be(buf + 4);
 br_des_do_IP(&l, &r);
 while (num_rounds -- > 0) {
  process_block_unit(&l, &r, skey);
  skey += 32;
 }
 br_des_do_invIP(&l, &r);
 br_enc32be(buf, l);
 br_enc32be(buf + 4, r);
}
