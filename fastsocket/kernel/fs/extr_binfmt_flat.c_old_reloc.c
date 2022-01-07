
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t type; scalar_t__ offset; } ;
struct TYPE_7__ {unsigned long value; TYPE_2__ reloc; } ;
typedef TYPE_3__ flat_v2_reloc_t ;
struct TYPE_8__ {TYPE_1__* mm; } ;
struct TYPE_5__ {unsigned long end_data; scalar_t__ start_data; scalar_t__ start_code; } ;





 TYPE_4__* current ;
 int printk (char*,int,...) ;

void old_reloc(unsigned long rl)
{



 flat_v2_reloc_t r;
 unsigned long *ptr;

 r.value = rl;



 ptr = (unsigned long *) (current->mm->start_data + r.reloc.offset);
 switch (r.reloc.type) {
 case 128:
  *ptr += current->mm->start_code;
  break;
 case 129:
  *ptr += current->mm->start_data;
  break;
 case 130:
  *ptr += current->mm->end_data;
  break;
 default:
  printk("BINFMT_FLAT: Unknown relocation type=%x\n", r.reloc.type);
  break;
 }




}
