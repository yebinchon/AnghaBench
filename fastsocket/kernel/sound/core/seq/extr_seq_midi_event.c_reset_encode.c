
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_midi_event {int type; scalar_t__ qlen; scalar_t__ read; } ;


 int ST_INVALID ;

__attribute__((used)) static inline void reset_encode(struct snd_midi_event *dev)
{
 dev->read = 0;
 dev->qlen = 0;
 dev->type = ST_INVALID;
}
