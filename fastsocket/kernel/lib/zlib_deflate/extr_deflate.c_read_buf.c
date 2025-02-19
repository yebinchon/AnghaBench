
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_5__ {int noheader; } ;
typedef TYPE_2__ deflate_state ;
struct TYPE_4__ {unsigned int avail_in; unsigned int next_in; unsigned int total_in; int adler; scalar_t__ state; } ;
typedef int Byte ;


 int memcpy (int *,unsigned int,unsigned int) ;
 int zlib_adler32 (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int read_buf(
 z_streamp strm,
 Byte *buf,
 unsigned size
)
{
    unsigned len = strm->avail_in;

    if (len > size) len = size;
    if (len == 0) return 0;

    strm->avail_in -= len;

    if (!((deflate_state *)(strm->state))->noheader) {
        strm->adler = zlib_adler32(strm->adler, strm->next_in, len);
    }
    memcpy(buf, strm->next_in, len);
    strm->next_in += len;
    strm->total_in += len;

    return (int)len;
}
