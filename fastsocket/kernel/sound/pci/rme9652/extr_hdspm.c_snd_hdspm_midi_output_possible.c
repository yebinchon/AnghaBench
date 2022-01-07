
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdspm {int dummy; } ;


 int HDSPM_midiStatusOut0 ;
 int HDSPM_midiStatusOut1 ;
 int hdspm_read (struct hdspm*,int ) ;

__attribute__((used)) static inline int snd_hdspm_midi_output_possible (struct hdspm *hdspm, int id)
{
 int fifo_bytes_used;

 if (id)
  fifo_bytes_used = hdspm_read(hdspm, HDSPM_midiStatusOut1);
 else
  fifo_bytes_used = hdspm_read(hdspm, HDSPM_midiStatusOut0);
 fifo_bytes_used &= 0xff;

 if (fifo_bytes_used < 128)
  return 128 - fifo_bytes_used;
 else
  return 0;
}
