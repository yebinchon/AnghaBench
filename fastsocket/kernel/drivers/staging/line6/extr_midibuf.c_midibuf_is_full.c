
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MidiBuffer {int full; } ;



__attribute__((used)) static int midibuf_is_full(struct MidiBuffer *this)
{
 return this->full;
}
