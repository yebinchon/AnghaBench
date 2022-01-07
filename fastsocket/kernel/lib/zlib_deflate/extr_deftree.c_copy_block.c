
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ush ;
typedef int ulg ;
struct TYPE_5__ {int last_eob_len; int bits_sent; size_t pending; int * pending_buf; } ;
typedef TYPE_1__ deflate_state ;


 int bi_windup (TYPE_1__*) ;
 int memcpy (int *,char*,unsigned int) ;
 int put_short (TYPE_1__*,int ) ;

__attribute__((used)) static void copy_block(
 deflate_state *s,
 char *buf,
 unsigned len,
 int header
)
{
    bi_windup(s);
    s->last_eob_len = 8;

    if (header) {
        put_short(s, (ush)len);
        put_short(s, (ush)~len);



    }




    memcpy(&s->pending_buf[s->pending], buf, len);
    s->pending += len;
}
