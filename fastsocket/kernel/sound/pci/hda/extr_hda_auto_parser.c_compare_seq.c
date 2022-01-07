
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auto_out_pin {scalar_t__ seq; } ;



__attribute__((used)) static int compare_seq(const void *ap, const void *bp)
{
 const struct auto_out_pin *a = ap;
 const struct auto_out_pin *b = bp;
 return (int)(a->seq - b->seq);
}
