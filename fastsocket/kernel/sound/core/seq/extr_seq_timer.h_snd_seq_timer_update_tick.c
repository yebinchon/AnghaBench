
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_seq_timer_tick {int resolution; unsigned long fraction; unsigned int cur_tick; } ;



__attribute__((used)) static inline void snd_seq_timer_update_tick(struct snd_seq_timer_tick *tick,
          unsigned long resolution)
{
 if (tick->resolution > 0) {
  tick->fraction += resolution;
  tick->cur_tick += (unsigned int)(tick->fraction / tick->resolution);
  tick->fraction %= tick->resolution;
 }
}
