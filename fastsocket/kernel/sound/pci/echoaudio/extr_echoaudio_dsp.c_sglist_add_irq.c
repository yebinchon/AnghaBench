
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct echoaudio {int dummy; } ;
struct audiopipe {int dummy; } ;


 int sglist_add_mapping (struct echoaudio*,struct audiopipe*,int ,int ) ;

__attribute__((used)) static inline int sglist_add_irq(struct echoaudio *chip, struct audiopipe *pipe)
{
 return sglist_add_mapping(chip, pipe, 0, 0);
}
