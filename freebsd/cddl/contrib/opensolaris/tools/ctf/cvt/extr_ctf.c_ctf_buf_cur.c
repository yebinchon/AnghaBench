
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_3__ {scalar_t__ ctb_base; scalar_t__ ctb_ptr; } ;
typedef TYPE_1__ ctf_buf_t ;



__attribute__((used)) static uint_t
ctf_buf_cur(ctf_buf_t *b)
{
 return (b->ctb_ptr - b->ctb_base);
}
