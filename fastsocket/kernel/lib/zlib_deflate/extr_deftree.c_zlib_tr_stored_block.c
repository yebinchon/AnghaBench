
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ulg ;
struct TYPE_5__ {int compressed_len; } ;
typedef TYPE_1__ deflate_state ;


 int STORED_BLOCK ;
 int copy_block (TYPE_1__*,char*,unsigned int,int) ;
 int send_bits (TYPE_1__*,int,int) ;

void zlib_tr_stored_block(
 deflate_state *s,
 char *buf,
 ulg stored_len,
 int eof
)
{
    send_bits(s, (STORED_BLOCK<<1)+eof, 3);
    s->compressed_len = (s->compressed_len + 3 + 7) & (ulg)~7L;
    s->compressed_len += (stored_len + 4) << 3;

    copy_block(s, buf, (unsigned)stored_len, 1);
}
