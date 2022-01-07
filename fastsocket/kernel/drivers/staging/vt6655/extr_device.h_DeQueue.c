
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tail; int head; int packet_num; int ** Q; } ;
struct TYPE_5__ {TYPE_1__ rxManeQueue; } ;
typedef int * PSRxMgmtPacket ;
typedef TYPE_2__* PSDevice ;


 int NUM ;
 int printk (char*) ;

__attribute__((used)) inline static PSRxMgmtPacket DeQueue (PSDevice pDevice)
{
 PSRxMgmtPacket pRxMgmtPacket;
 if (pDevice->rxManeQueue.tail == pDevice->rxManeQueue.head)
 {
  printk("Queue is Empty\n");
  return ((void*)0);
 }
 else
 {
  int x;

  pDevice->rxManeQueue.head = (pDevice->rxManeQueue.head+1)%NUM;
  x = pDevice->rxManeQueue.head;

  pRxMgmtPacket = pDevice->rxManeQueue.Q[x];
  pDevice->rxManeQueue.packet_num--;
  return pRxMgmtPacket;
 }
}
