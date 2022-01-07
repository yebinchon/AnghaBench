
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_7__ {struct TYPE_7__* Next; int Count; int Value; } ;
typedef TYPE_1__ ValueProfNode ;
struct TYPE_9__ {TYPE_1__*** NodesKind; } ;
struct TYPE_8__ {int Count; int Value; } ;
typedef TYPE_2__ InstrProfValueData ;


 TYPE_6__ RTRecord ;

__attribute__((used)) static ValueProfNode *getNextNValueData(uint32_t VK, uint32_t Site,
                                        InstrProfValueData *Dst,
                                        ValueProfNode *StartNode, uint32_t N) {
  unsigned I;
  ValueProfNode *VNode = StartNode ? StartNode : RTRecord.NodesKind[VK][Site];
  for (I = 0; I < N; I++) {
    Dst[I].Value = VNode->Value;
    Dst[I].Count = VNode->Count;
    VNode = VNode->Next;
  }
  return VNode;
}
