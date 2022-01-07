
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro {int length; int value; int name; } ;
struct input {int input_left; int * input_str; int * input_ptr; int input_macro; int type; } ;


 int INPUT_STRING ;
 int LIST_INSERT_HEAD (int *,struct input*,int ) ;
 int free (struct input*) ;
 int inputs ;
 int link ;
 void* malloc (int) ;
 int memcpy (int *,int ,int) ;
 int report (char*) ;

__attribute__((used)) static void
input_open_macro(struct macro *m)
{
 struct input *input;

 if ((input = malloc(sizeof(*input))) == ((void*)0))
  report("%m");
 input->type = INPUT_STRING;
 input->input_macro = m->name;
 if ((input->input_str = malloc(m->length)) == ((void*)0)) {
  free(input);
  report("%m");
 }
 memcpy(input->input_str, m->value, m->length);
 input->input_ptr = input->input_str;
 input->input_left = m->length;
 LIST_INSERT_HEAD(&inputs, input, link);
}
