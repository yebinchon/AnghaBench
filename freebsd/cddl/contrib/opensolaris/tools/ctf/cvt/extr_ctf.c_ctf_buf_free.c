
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ctb_base; int ctb_strtab; } ;
typedef TYPE_1__ ctf_buf_t ;


 int free (TYPE_1__*) ;
 int strtab_destroy (int *) ;

__attribute__((used)) static void
ctf_buf_free(ctf_buf_t *b)
{
 strtab_destroy(&b->ctb_strtab);
 free(b->ctb_base);
 free(b);
}
