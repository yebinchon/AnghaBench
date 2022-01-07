
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ircomm_tty_cb {int state; } ;
typedef int IRCOMM_TTY_STATE ;



__attribute__((used)) static inline void ircomm_tty_next_state(struct ircomm_tty_cb *self, IRCOMM_TTY_STATE state)
{







 self->state = state;
}
