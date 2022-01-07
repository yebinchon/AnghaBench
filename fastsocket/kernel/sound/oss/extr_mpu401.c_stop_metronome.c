
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mpu_cmd (int,int,int ) ;

__attribute__((used)) static void stop_metronome(int midi_dev)
{
 mpu_cmd(midi_dev, 0x84, 0);
}
