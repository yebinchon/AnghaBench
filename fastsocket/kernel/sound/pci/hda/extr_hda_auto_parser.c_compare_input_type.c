
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auto_pin_cfg_item {scalar_t__ type; } ;



__attribute__((used)) static int compare_input_type(const void *ap, const void *bp)
{
 const struct auto_pin_cfg_item *a = ap;
 const struct auto_pin_cfg_item *b = bp;
 return (int)(a->type - b->type);
}
