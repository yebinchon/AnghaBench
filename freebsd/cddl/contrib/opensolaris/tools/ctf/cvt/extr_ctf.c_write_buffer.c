
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ctf_header_t ;
struct TYPE_5__ {int str_size; } ;
struct TYPE_4__ {TYPE_3__ ctb_strtab; int * ctb_base; int * ctb_ptr; } ;
typedef TYPE_1__ ctf_buf_t ;
typedef size_t caddr_t ;


 int bcopy_data (int *,int,size_t*) ;
 int strtab_write (TYPE_3__*,int (*) (int *,int,size_t*),size_t*) ;
 size_t xmalloc (int) ;

__attribute__((used)) static caddr_t
write_buffer(ctf_header_t *h, ctf_buf_t *buf, size_t *resszp)
{
 caddr_t outbuf;
 caddr_t bufpos;

 outbuf = xmalloc(sizeof (ctf_header_t) + (buf->ctb_ptr - buf->ctb_base)
     + buf->ctb_strtab.str_size);

 bufpos = outbuf;
 (void) bcopy_data(h, sizeof (ctf_header_t), &bufpos);
 (void) bcopy_data(buf->ctb_base, buf->ctb_ptr - buf->ctb_base,
     &bufpos);
 (void) strtab_write(&buf->ctb_strtab, bcopy_data, &bufpos);
 *resszp = bufpos - outbuf;
 return (outbuf);
}
