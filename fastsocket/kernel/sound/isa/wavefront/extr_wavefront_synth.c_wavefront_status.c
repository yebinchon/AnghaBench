
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status_port; } ;
typedef TYPE_1__ snd_wavefront_t ;


 int inb (int ) ;

__attribute__((used)) static inline int
wavefront_status (snd_wavefront_t *dev)

{
 return inb (dev->status_port);
}
