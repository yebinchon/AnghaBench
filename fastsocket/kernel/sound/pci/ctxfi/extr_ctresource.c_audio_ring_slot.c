
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc {int conj; size_t type; } ;


 int* offset_in_audio_slot_block ;

__attribute__((used)) static int audio_ring_slot(const struct rsc *rsc)
{
    return (rsc->conj << 4) + offset_in_audio_slot_block[rsc->type];
}
