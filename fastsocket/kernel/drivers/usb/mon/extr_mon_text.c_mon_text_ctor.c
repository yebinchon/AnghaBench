
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_event_text {int dummy; } ;


 int memset (void*,int,int) ;

__attribute__((used)) static void mon_text_ctor(void *mem)
{




 memset(mem, 0xe5, sizeof(struct mon_event_text));
}
