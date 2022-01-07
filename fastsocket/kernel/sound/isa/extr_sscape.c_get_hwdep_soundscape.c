
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soundscape {int dummy; } ;
struct snd_hwdep {scalar_t__ private_data; } ;



__attribute__((used)) static inline struct soundscape *get_hwdep_soundscape(struct snd_hwdep * hw)
{
 return (struct soundscape *) (hw->private_data);
}
