
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inherit_stream_fini (void*) ;

__attribute__((used)) static
void
default_stream_fini(void *v)
{
    inherit_stream_fini(v);
}
