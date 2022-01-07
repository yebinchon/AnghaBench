
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MidiBuffer {int pos_read; int pos_write; int size; } ;


 scalar_t__ midibuf_is_full (struct MidiBuffer*) ;

int midibuf_bytes_free(struct MidiBuffer *this)
{
 return
  midibuf_is_full(this) ?
  0 :
  (this->pos_read - this->pos_write + this->size - 1) % this->size + 1;
}
