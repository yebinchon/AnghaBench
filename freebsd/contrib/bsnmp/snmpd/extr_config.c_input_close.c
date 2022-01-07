
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input {int type; struct input* input_str; struct input* input_filename; int input_fp; } ;




 struct input* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct input*,int ) ;
 int abort () ;
 int fclose (int ) ;
 int free (struct input*) ;
 int inputs ;
 int link ;

__attribute__((used)) static void
input_close(void)
{
 struct input *input;

 if ((input = LIST_FIRST(&inputs)) == ((void*)0))
  abort();
 switch (input->type) {

   case 129:
  fclose(input->input_fp);
  free(input->input_filename);
  break;

   case 128:
  free(input->input_str);
  break;
 }
 LIST_REMOVE(input, link);
 free(input);
}
