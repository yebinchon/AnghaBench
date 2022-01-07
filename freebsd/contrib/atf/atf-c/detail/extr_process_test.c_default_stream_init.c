
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * m_sb_ptr; } ;
struct inherit_stream {TYPE_1__ m_base; } ;


 int inherit_stream_init (void*) ;

__attribute__((used)) static
void
default_stream_init(void *v)
{
    struct inherit_stream *s = v;

    inherit_stream_init(v);
    s->m_base.m_sb_ptr = ((void*)0);
}
