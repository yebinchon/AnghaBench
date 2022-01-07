
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct KEY_STACK {struct KEYS* element; struct KEY_STACK* next; } ;
struct KEYS {char* string; int length; void* value; } ;


 int K1__ ;
 int K5__ ;
 struct KEY_STACK* KEY_TOS ;
 void** Key_vals ;
 int Max_Key_len ;
 char** String_table ;
 int kUND__ ;
 int kb__ ;
 int kbeg__ ;
 int kcbt__ ;
 int ke__ ;
 int kf11__ ;
 int kf63__ ;
 char* malloc (int) ;
 int strcpy (char*,char*) ;
 void* strlen (char*) ;

void
Key_Get()
{
 int Counter;
 int Klen;
 int key_def;
 struct KEY_STACK *Spoint;

 Max_Key_len = 0;
 Counter = 0;
 key_def = kb__;
 while (key_def <= kf63__)
 {
  if (key_def == ke__)
   key_def = K1__;
  else if (key_def == (K5__ + 1))
   key_def = kcbt__;
  else if (key_def == (kcbt__ + 1))
   key_def = kbeg__;
  else if (key_def == (kUND__ + 1))
   key_def = kf11__;
  if (String_table[key_def] != ((void*)0))
  {
   if (KEY_TOS == ((void*)0))
    Spoint = KEY_TOS = (struct KEY_STACK *) malloc(sizeof(struct KEY_STACK));
   else
   {
    Spoint = KEY_TOS;
    while (Spoint->next != ((void*)0))
     Spoint = Spoint->next;
    Spoint->next = (struct KEY_STACK *) malloc(sizeof(struct KEY_STACK));
    Spoint = Spoint->next;
   }
   Spoint->next = ((void*)0);
   Spoint->element = (struct KEYS *) malloc(sizeof(struct KEYS));
   Spoint->element->string = String_table[key_def];
   Spoint->element->length = strlen(String_table[key_def]);
   Spoint->element->value = Key_vals[Counter];
   Klen = strlen(Spoint->element->string);
   if (Klen > Max_Key_len)
    Max_Key_len = Klen;







   if ((Spoint->element->length > 1) &&
       ((String_table[key_def][1] == '[') ||
        (String_table[key_def][1] == 'O')))
   {
    Spoint->next = (struct KEY_STACK *) malloc(sizeof(struct KEY_STACK));
    Spoint = Spoint->next;
    Spoint->next = ((void*)0);
    Spoint->element = (struct KEYS *) malloc(sizeof(struct KEYS));
    Spoint->element->length = strlen(String_table[key_def]);
    Spoint->element->string = malloc(Spoint->element->length + 1);
    strcpy(Spoint->element->string, String_table[key_def]);
    Spoint->element->value = Key_vals[Counter];
    Klen = strlen(Spoint->element->string);
    if (Klen > Max_Key_len)
     Max_Key_len = Klen;

    if (String_table[key_def][1] == '[')
     Spoint->element->string[1] = 'O';
    else
     Spoint->element->string[1] = '[';
   }
  }
  key_def++;
  Counter++;
 }
}
