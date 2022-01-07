
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct echoaudio {TYPE_1__* comm_page; } ;
struct TYPE_2__ {scalar_t__ handshake; } ;



__attribute__((used)) static inline void clear_handshake(struct echoaudio *chip)
{
 chip->comm_page->handshake = 0;
}
