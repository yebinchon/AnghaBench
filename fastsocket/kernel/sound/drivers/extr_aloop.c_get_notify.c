
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loopback_pcm {int dummy; } ;
struct TYPE_2__ {unsigned int notify; } ;


 TYPE_1__* get_setup (struct loopback_pcm*) ;

__attribute__((used)) static inline unsigned int get_notify(struct loopback_pcm *dpcm)
{
 return get_setup(dpcm)->notify;
}
