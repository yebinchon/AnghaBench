
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MidiBuffer {int size; int split; int * buf; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int * kmalloc (int,int ) ;
 int midibuf_reset (struct MidiBuffer*) ;

int midibuf_init(struct MidiBuffer *this, int size, int split)
{
 this->buf = kmalloc(size, GFP_KERNEL);

 if (this->buf == ((void*)0))
  return -ENOMEM;

 this->size = size;
 this->split = split;
 midibuf_reset(this);
 return 0;
}
