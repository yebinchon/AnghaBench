
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_midiStatusIn0 ;
 int HDSPM_midiStatusIn1 ;
 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static inline int snd_hdspm_midi_input_available (struct hdspm *hdspm, int id)
{
 if (id)
  return (hdspm_read(hdspm, HDSPM_midiStatusIn1) & 0xff);
 else
  return (hdspm_read(hdspm, HDSPM_midiStatusIn0) & 0xff);
}
