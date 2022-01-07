
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int compressed_len; } ;
typedef TYPE_1__ deflate_state ;


 int STORED_BLOCK ;
 int bi_windup (TYPE_1__*) ;
 int send_bits (TYPE_1__*,int,int) ;

void zlib_tr_stored_type_only(
 deflate_state *s
)
{
    send_bits(s, (STORED_BLOCK << 1), 3);
    bi_windup(s);
    s->compressed_len = (s->compressed_len + 3) & ~7L;
}
