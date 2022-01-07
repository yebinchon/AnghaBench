
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MidiBuffer {scalar_t__ pos_read; scalar_t__ pos_write; int full; } ;



__attribute__((used)) static int midibuf_is_empty(struct MidiBuffer *this)
{
 return (this->pos_read == this->pos_write) && !this->full;
}
