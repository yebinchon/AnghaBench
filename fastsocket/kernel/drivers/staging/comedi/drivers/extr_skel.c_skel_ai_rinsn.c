
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; } ;
struct comedi_device {int dummy; } ;
struct TYPE_2__ {int ai_bits; } ;


 int ETIMEDOUT ;
 int TIMEOUT ;
 int printk (char*) ;
 TYPE_1__* thisboard ;

__attribute__((used)) static int skel_ai_rinsn(struct comedi_device *dev, struct comedi_subdevice *s,
    struct comedi_insn *insn, unsigned int *data)
{
 int n, i;
 unsigned int d;
 unsigned int status;
 for (n = 0; n < insn->n; n++) {





  for (i = 0; i < 100; i++) {
   status = 1;

   if (status)
    break;
  }
  if (i == 100) {


   printk("timeout\n");
   return -ETIMEDOUT;
  }



  d = 0;


  d ^= 1 << (thisboard->ai_bits - 1);

  data[n] = d;
 }


 return n;
}
