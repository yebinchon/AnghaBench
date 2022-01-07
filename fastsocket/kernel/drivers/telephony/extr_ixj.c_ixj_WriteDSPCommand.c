
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {unsigned short high; unsigned short low; } ;
struct TYPE_7__ {int low; int high; } ;
struct TYPE_8__ {int DSPWrite; int board; scalar_t__ DSPbase; TYPE_1__ ssr; int iscontrolreadyfail; int iscontrolready; } ;
typedef TYPE_2__ IXJ ;
typedef TYPE_3__ BYTES ;


 int IsControlReady (TYPE_2__*) ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int atomic_read (int *) ;
 int hertz ;
 void* inb_p (scalar_t__) ;
 int ixj_perfmon (int ) ;
 scalar_t__ ixj_status_wait (TYPE_2__*) ;
 int jiffies ;
 int outb (unsigned short,scalar_t__) ;
 int printk (char*,int ,unsigned short) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int ixj_WriteDSPCommand(unsigned short cmd, IXJ *j)
{
 BYTES bytes;
 unsigned long jif;

 atomic_inc(&j->DSPWrite);
 if(atomic_read(&j->DSPWrite) > 1) {
  printk("IXJ %d DSP write overlap attempting command 0x%4.4x\n", j->board, cmd);
  return -1;
 }
 bytes.high = (cmd & 0xFF00) >> 8;
 bytes.low = cmd & 0x00FF;
 jif = jiffies + ((60 * hertz) / 100);
 while (!IsControlReady(j)) {
  ixj_perfmon(j->iscontrolready);
  if (time_after(jiffies, jif)) {
   ixj_perfmon(j->iscontrolreadyfail);
   atomic_dec(&j->DSPWrite);
   if(atomic_read(&j->DSPWrite) > 0) {
    printk("IXJ %d DSP overlaped command 0x%4.4x during control ready failure.\n", j->board, cmd);
    while(atomic_read(&j->DSPWrite) > 0) {
     atomic_dec(&j->DSPWrite);
    }
   }
   return -1;
  }
 }
 outb(bytes.low, j->DSPbase + 6);
 outb(bytes.high, j->DSPbase + 7);

 if (ixj_status_wait(j)) {
  j->ssr.low = 0xFF;
  j->ssr.high = 0xFF;
  atomic_dec(&j->DSPWrite);
  if(atomic_read(&j->DSPWrite) > 0) {
   printk("IXJ %d DSP overlaped command 0x%4.4x during status wait failure.\n", j->board, cmd);
   while(atomic_read(&j->DSPWrite) > 0) {
    atomic_dec(&j->DSPWrite);
   }
  }
  return -1;
 }

 j->ssr.low = inb_p(j->DSPbase + 2);
 j->ssr.high = inb_p(j->DSPbase + 3);
 atomic_dec(&j->DSPWrite);
 if(atomic_read(&j->DSPWrite) > 0) {
  printk("IXJ %d DSP overlaped command 0x%4.4x\n", j->board, cmd);
  while(atomic_read(&j->DSPWrite) > 0) {
   atomic_dec(&j->DSPWrite);
  }
 }
 return 0;
}
