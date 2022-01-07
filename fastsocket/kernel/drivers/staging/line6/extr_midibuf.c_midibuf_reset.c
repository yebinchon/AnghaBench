
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MidiBuffer {int command_prev; scalar_t__ full; scalar_t__ pos_write; scalar_t__ pos_read; } ;



void midibuf_reset(struct MidiBuffer *this)
{
 this->pos_read = this->pos_write = this->full = 0;
 this->command_prev = -1;
}
