
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int snd_wavefront_midi_t ;


 int OUTPUT_READY ;
 int wf_mpu_status (int *) ;

__attribute__((used)) static inline int
output_ready (snd_wavefront_midi_t *midi)

{
 return !(wf_mpu_status(midi) & OUTPUT_READY);
}
