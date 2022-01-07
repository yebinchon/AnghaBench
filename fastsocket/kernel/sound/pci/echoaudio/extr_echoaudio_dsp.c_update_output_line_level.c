
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;


 int DSP_VC_UPDATE_OUTVOL ;
 int EIO ;
 int clear_handshake (struct echoaudio*) ;
 int send_vector (struct echoaudio*,int ) ;
 scalar_t__ wait_handshake (struct echoaudio*) ;

__attribute__((used)) static int update_output_line_level(struct echoaudio *chip)
{
 if (wait_handshake(chip))
  return -EIO;
 clear_handshake(chip);
 return send_vector(chip, DSP_VC_UPDATE_OUTVOL);
}
