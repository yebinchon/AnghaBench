
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int queue_length; } ;
struct ua101 {TYPE_1__ playback; } ;



__attribute__((used)) static inline void add_with_wraparound(struct ua101 *ua,
           unsigned int *value, unsigned int add)
{
 *value += add;
 if (*value >= ua->playback.queue_length)
  *value -= ua->playback.queue_length;
}
