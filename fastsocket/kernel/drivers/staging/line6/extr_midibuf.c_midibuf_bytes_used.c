
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MidiBuffer {int pos_write; int pos_read; int size; } ;


 scalar_t__ midibuf_is_empty (struct MidiBuffer*) ;

int midibuf_bytes_used(struct MidiBuffer *this)
{
 return
  midibuf_is_empty(this) ?
  0 :
  (this->pos_write - this->pos_read + this->size - 1) % this->size + 1;
}
