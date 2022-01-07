
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct lx6464es {int dummy; } ;


 int SSTATE_STOP ;
 int lx_stream_set_state (struct lx6464es*,int ,int,int ) ;
 int snd_printdd (char*) ;

__attribute__((used)) static inline int lx_stream_stop(struct lx6464es *chip, u32 pipe,
     int is_capture)
{
 snd_printdd("->lx_stream_stop\n");
 return lx_stream_set_state(chip, pipe, is_capture, SSTATE_STOP);
}
