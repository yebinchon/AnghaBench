
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame {scalar_t__ cb; } ;
typedef void carlu_tx_info ;



__attribute__((used)) static inline struct carlu_tx_info *get_tx_info(struct frame *frame)
{
 return (void *) frame->cb;
}
