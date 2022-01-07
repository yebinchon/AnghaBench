
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int record_disabled; } ;


 int atomic_dec (int *) ;

void ring_buffer_record_enable(struct ring_buffer *buffer)
{
 atomic_dec(&buffer->record_disabled);
}
