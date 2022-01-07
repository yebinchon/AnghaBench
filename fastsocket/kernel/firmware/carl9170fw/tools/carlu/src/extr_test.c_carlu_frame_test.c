
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {int alloced; int payload; int len; int data; } ;
struct carlu {int dummy; } ;


 int INFO ;
 struct frame* carlu_alloc_frame (struct carlu*,int) ;
 int frame_free (struct frame*) ;
 int frame_push (struct frame*,int) ;
 int frame_put (struct frame*,int) ;
 int frame_reserve (struct frame*,int) ;
 int memset (int ,int,int) ;
 int print_hex_dump_bytes (int ,char*,int ,int ) ;

void carlu_frame_test(struct carlu *ar)
{
 struct frame *frame;

 frame = carlu_alloc_frame(ar, 0x40);
 frame_reserve(frame, 0x10);

 memset(frame_put(frame, 0x10), 0x11, 0x10);
 memset(frame_put(frame, 0x10), 0x22, 0x10);
 memset(frame_push(frame, 0x10), 0x33, 0x10);
 memset(frame_put(frame, 0x10), 0x44, 0x10);

 print_hex_dump_bytes(INFO, "DATA:", frame->data, frame->len);

 print_hex_dump_bytes(INFO, "PAYLOAD:", frame->payload, frame->alloced);

 frame_free(frame);
}
