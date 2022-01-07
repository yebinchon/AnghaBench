
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIE_ID ;
 int DIE_NAME ;






 unsigned short FORM_FROM_ATTR (unsigned int) ;


 int TARGET_FT_POINTER_SIZE (int ) ;
 int objfile ;
 int unknown_attribute_form_complaint (int ,int ,unsigned short) ;

__attribute__((used)) static int
attribute_size (unsigned int attr)
{
  int nbytes;
  unsigned short form;

  form = FORM_FROM_ATTR (attr);
  switch (form)
    {
    case 128:
      nbytes = 0;
      break;
    case 132:
    case 134:
      nbytes = 2;
      break;
    case 131:
    case 133:
    case 129:
      nbytes = 4;
      break;
    case 130:
      nbytes = 8;
      break;
    case 135:
      nbytes = TARGET_FT_POINTER_SIZE (objfile);
      break;
    default:
      unknown_attribute_form_complaint (DIE_ID, DIE_NAME, form);
      nbytes = -1;
      break;
    }
  return (nbytes);
}
