
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dbu_buf; scalar_t__ dbu_ptr; } ;
typedef TYPE_1__ dt_buf_t ;


 size_t roundup (size_t,size_t) ;

size_t
dt_buf_offset(const dt_buf_t *bp, size_t align)
{
 size_t off = (size_t)(bp->dbu_ptr - bp->dbu_buf);
 return (roundup(off, align));
}
