
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
struct vfe_output_path {int fragIndex; scalar_t__ hwCurrentFlag; int hwRegPongAddress; int hwRegPingAddress; int * addressBuffer; } ;


 scalar_t__ ping ;
 scalar_t__ pong ;
 int writel (int ,int ) ;

__attribute__((used)) static void vfe_process_pingpong_irq(struct vfe_output_path *in,
 uint8_t fragmentCount)
{
 uint16_t circularIndex;
 uint32_t nextFragmentAddr;


 circularIndex = (in->fragIndex) % (2 * fragmentCount);
 nextFragmentAddr = in->addressBuffer[circularIndex];

 in->fragIndex = circularIndex + 1;


 if (in->hwCurrentFlag == ping) {
  writel(nextFragmentAddr, in->hwRegPingAddress);
  in->hwCurrentFlag = pong;

 } else {
  writel(nextFragmentAddr, in->hwRegPongAddress);
  in->hwCurrentFlag = ping;
 }
}
