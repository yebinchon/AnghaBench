
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {struct header_iter* private; } ;
struct header_iter {int dummy; } ;


 int destroy_header_iter (struct header_iter*) ;

__attribute__((used)) static void mmio_close(struct trace_iterator *iter)
{
 struct header_iter *hiter = iter->private;
 destroy_header_iter(hiter);
 iter->private = ((void*)0);
}
