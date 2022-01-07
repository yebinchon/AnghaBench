
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct KEY_STACK {TYPE_1__* element; struct KEY_STACK* next; } ;
struct TYPE_2__ {scalar_t__ length; int string; } ;


 struct KEY_STACK* KEY_TOS ;
 int Max_Key_len ;
 scalar_t__ malloc (int) ;
 int strlen (int ) ;
 TYPE_1__* vt100 ;

void
keys_vt100()
{
 int counter;
 int Klen;
 struct KEY_STACK *Spoint;

 Spoint = KEY_TOS;
 while (Spoint->next != ((void*)0))
  Spoint = Spoint->next;
 for (counter = 0; vt100[counter].length != 0; counter++)
 {
  Spoint->next = (struct KEY_STACK *) malloc(sizeof(struct KEY_STACK));
  Spoint = Spoint->next;
  Spoint->next = ((void*)0);
  Spoint->element = &vt100[counter];
  Klen = strlen(Spoint->element->string);
  if (Klen > Max_Key_len)
   Max_Key_len = Klen;
 }
}
