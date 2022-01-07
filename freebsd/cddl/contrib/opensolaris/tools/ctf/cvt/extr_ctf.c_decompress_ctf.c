
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t avail_in; size_t avail_out; size_t total_out; int * next_in; int total_in; int * next_out; scalar_t__ opaque; scalar_t__ zfree; scalar_t__ zalloc; } ;
typedef TYPE_1__ z_stream ;
typedef scalar_t__ voidpf ;
typedef scalar_t__ free_func ;
typedef scalar_t__ caddr_t ;
typedef scalar_t__ alloc_func ;
typedef int Bytef ;


 int Z_NO_FLUSH ;
 int Z_OK ;
 int Z_STREAM_END ;
 int debug (int,char*,int ,size_t,scalar_t__) ;
 int inflate (TYPE_1__*,int ) ;
 int inflateEnd (TYPE_1__*) ;
 int inflateInit (TYPE_1__*) ;
 int warning (char*,int ) ;
 int zError (int) ;

__attribute__((used)) static size_t
decompress_ctf(caddr_t cbuf, size_t cbufsz, caddr_t dbuf, size_t dbufsz)
{
 z_stream zstr;
 int rc;

 zstr.zalloc = (alloc_func)0;
 zstr.zfree = (free_func)0;
 zstr.opaque = (voidpf)0;

 zstr.next_in = (Bytef *)cbuf;
 zstr.avail_in = cbufsz;
 zstr.next_out = (Bytef *)dbuf;
 zstr.avail_out = dbufsz;

 if ((rc = inflateInit(&zstr)) != Z_OK ||
     (rc = inflate(&zstr, Z_NO_FLUSH)) != Z_STREAM_END ||
     (rc = inflateEnd(&zstr)) != Z_OK) {
  warning("CTF decompress zlib error %s\n", zError(rc));
  return (0);
 }

 debug(3, "reflated %lu bytes to %lu, pointer at %d\n",
     zstr.total_in, zstr.total_out, (caddr_t)zstr.next_in - cbuf);

 return (zstr.total_out);
}
