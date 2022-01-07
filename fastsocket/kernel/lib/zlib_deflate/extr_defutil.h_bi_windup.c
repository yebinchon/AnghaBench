
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int bi_valid; int bits_sent; scalar_t__ bi_buf; } ;
typedef TYPE_1__ deflate_state ;
typedef int Byte ;


 int put_byte (TYPE_1__*,int ) ;
 int put_short (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static inline void bi_windup(deflate_state *s)
{
    if (s->bi_valid > 8) {
        put_short(s, s->bi_buf);
    } else if (s->bi_valid > 0) {
        put_byte(s, (Byte)s->bi_buf);
    }
    s->bi_buf = 0;
    s->bi_valid = 0;



}
