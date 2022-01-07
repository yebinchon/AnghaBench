
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int record_disabled; } ;


 int atomic_inc (int *) ;

void ring_buffer_record_disable(struct ring_buffer *buffer)
{
 atomic_inc(&buffer->record_disabled);
}
