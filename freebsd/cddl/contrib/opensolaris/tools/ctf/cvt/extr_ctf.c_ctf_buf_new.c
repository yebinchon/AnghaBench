
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctb_strtab; } ;
typedef TYPE_1__ ctf_buf_t ;


 int ctf_buf_grow (TYPE_1__*) ;
 int strtab_create (int *) ;
 TYPE_1__* xcalloc (int) ;

__attribute__((used)) static ctf_buf_t *
ctf_buf_new(void)
{
 ctf_buf_t *b = xcalloc(sizeof (ctf_buf_t));

 strtab_create(&b->ctb_strtab);
 ctf_buf_grow(b);

 return (b);
}
