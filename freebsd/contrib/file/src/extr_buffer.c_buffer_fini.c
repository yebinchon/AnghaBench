
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int ebuf; } ;


 int free (int ) ;

void
buffer_fini(struct buffer *b)
{
 free(b->ebuf);
}
