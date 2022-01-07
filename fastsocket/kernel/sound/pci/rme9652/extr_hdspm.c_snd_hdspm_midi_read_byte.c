
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_midiDataIn0 ;
 int HDSPM_midiDataIn1 ;
 unsigned char hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static inline unsigned char snd_hdspm_midi_read_byte (struct hdspm *hdspm,
            int id)
{

 if (id)
  return hdspm_read(hdspm, HDSPM_midiDataIn1);
 else
  return hdspm_read(hdspm, HDSPM_midiDataIn0);
}
