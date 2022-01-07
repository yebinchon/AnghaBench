
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rb_zstr; } ;
typedef TYPE_1__ resbuf_t ;


 int Z_FINISH ;
 int Z_OK ;
 int compress_flush (TYPE_1__*,int ) ;
 int deflateEnd (int *) ;
 int parseterminate (char*,int ) ;
 int zError (int) ;

__attribute__((used)) static void
compress_end(resbuf_t *rb)
{
 int rc;

 compress_flush(rb, Z_FINISH);

 if ((rc = deflateEnd(&rb->rb_zstr)) != Z_OK)
  parseterminate("zlib end failed: %s", zError(rc));
}
