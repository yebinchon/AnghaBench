
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MidiBuffer {int * buf; } ;


 int kfree (int *) ;

void midibuf_destroy(struct MidiBuffer *this)
{
 kfree(this->buf);
 this->buf = ((void*)0);
}
