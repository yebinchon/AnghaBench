
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_3__ {int * state; } ;


 int Z_OK ;
 int Z_STREAM_ERROR ;

int zlib_inflateEnd(z_streamp strm)
{
    if (strm == ((void*)0) || strm->state == ((void*)0))
        return Z_STREAM_ERROR;
    return Z_OK;
}
