
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MidiBuffer {int size; int pos_write; int pos_read; int full; scalar_t__ buf; } ;


 int memcpy (scalar_t__,unsigned char*,int) ;
 int midibuf_bytes_free (struct MidiBuffer*) ;
 scalar_t__ midibuf_is_full (struct MidiBuffer*) ;

int midibuf_write(struct MidiBuffer *this, unsigned char *data, int length)
{
 int bytes_free;
 int length1, length2;
 int skip_active_sense = 0;

 if (midibuf_is_full(this) || (length <= 0))
  return 0;


 if (data[length - 1] == 0xfe) {
  --length;
  skip_active_sense = 1;
 }

 bytes_free = midibuf_bytes_free(this);

 if (length > bytes_free)
  length = bytes_free;

 if (length > 0) {
  length1 = this->size - this->pos_write;

  if (length < length1) {

   memcpy(this->buf + this->pos_write, data, length);
   this->pos_write += length;
  } else {

   length2 = length - length1;
   memcpy(this->buf + this->pos_write, data, length1);
   memcpy(this->buf, data + length1, length2);
   this->pos_write = length2;
  }

  if (this->pos_write == this->pos_read)
   this->full = 1;
 }

 return length + skip_active_sense;
}
