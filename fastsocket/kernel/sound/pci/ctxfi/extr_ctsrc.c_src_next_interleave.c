
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct src {struct src* intlv; } ;



__attribute__((used)) static struct src *src_next_interleave(struct src *src)
{
 return src->intlv;
}
