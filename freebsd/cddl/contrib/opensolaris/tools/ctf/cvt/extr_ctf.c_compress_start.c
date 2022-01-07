
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ voidpf ;
struct TYPE_5__ {scalar_t__ opaque; scalar_t__ zfree; scalar_t__ zalloc; } ;
struct TYPE_4__ {TYPE_2__ rb_zstr; } ;
typedef TYPE_1__ resbuf_t ;
typedef scalar_t__ free_func ;
typedef scalar_t__ alloc_func ;


 int Z_BEST_COMPRESSION ;
 int Z_OK ;
 int deflateInit (TYPE_2__*,int ) ;
 int parseterminate (char*,int ) ;
 int zError (int) ;

__attribute__((used)) static void
compress_start(resbuf_t *rb)
{
 int rc;

 rb->rb_zstr.zalloc = (alloc_func)0;
 rb->rb_zstr.zfree = (free_func)0;
 rb->rb_zstr.opaque = (voidpf)0;

 if ((rc = deflateInit(&rb->rb_zstr, Z_BEST_COMPRESSION)) != Z_OK)
  parseterminate("zlib start failed: %s", zError(rc));
}
