
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {size_t rb_base; size_t rb_ptr; int rb_size; } ;
typedef TYPE_1__ resbuf_t ;
typedef int ctf_header_t ;
struct TYPE_11__ {int ctb_strtab; scalar_t__ ctb_base; scalar_t__ ctb_ptr; } ;
typedef TYPE_2__ ctf_buf_t ;
typedef size_t caddr_t ;


 int RES_BUF_CHUNK_SIZE ;
 int Z_FULL_FLUSH ;
 int bcopy (int *,size_t,int) ;
 int compress_buffer (scalar_t__,scalar_t__,TYPE_1__*) ;
 int compress_end (TYPE_1__*) ;
 int compress_flush (TYPE_1__*,int ) ;
 int compress_start (TYPE_1__*) ;
 int strtab_write (int *,int (*) (scalar_t__,scalar_t__,TYPE_1__*),TYPE_1__*) ;
 size_t xmalloc (int ) ;

__attribute__((used)) static caddr_t
write_compressed_buffer(ctf_header_t *h, ctf_buf_t *buf, size_t *resszp)
{
 resbuf_t resbuf;
 resbuf.rb_size = RES_BUF_CHUNK_SIZE;
 resbuf.rb_base = xmalloc(resbuf.rb_size);
 bcopy(h, resbuf.rb_base, sizeof (ctf_header_t));
 resbuf.rb_ptr = resbuf.rb_base + sizeof (ctf_header_t);

 compress_start(&resbuf);
 (void) compress_buffer(buf->ctb_base, buf->ctb_ptr - buf->ctb_base,
     &resbuf);
 compress_flush(&resbuf, Z_FULL_FLUSH);
 (void) strtab_write(&buf->ctb_strtab, compress_buffer, &resbuf);
 compress_end(&resbuf);

 *resszp = (resbuf.rb_ptr - resbuf.rb_base);
 return (resbuf.rb_base);
}
