
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_midiDataOut0 ;
 int HDSPM_midiDataOut1 ;
 int hdspm_write (struct hdspm*,int ,int) ;

__attribute__((used)) static inline void snd_hdspm_midi_write_byte (struct hdspm *hdspm, int id,
           int val)
{

 if (id)
  hdspm_write(hdspm, HDSPM_midiDataOut1, val);
 else
  hdspm_write(hdspm, HDSPM_midiDataOut0, val);
}
