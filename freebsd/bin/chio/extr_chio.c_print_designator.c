
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;





 int CODESET ;
 int LC_ALL ;
 int UTF8CODESET ;
 char* nl_langinfo (int ) ;
 int printf (char*,...) ;
 int setlocale (int ,char*) ;
 int strcmp (char*,int ) ;

__attribute__((used)) static void
print_designator(const char *designator, u_int8_t code_set,
    u_int8_t designator_length)
{
 printf(" serial number: <");
 switch (code_set) {
 case 130: {



  printf("%s", designator);
  break;
 }
 case 128: {
  char *cs_native;

  setlocale(LC_ALL, "");
  cs_native = nl_langinfo(CODESET);


  if (strcmp(cs_native, UTF8CODESET) == 0)
   cs_native = ((void*)0);

  if (cs_native == ((void*)0)) {

   printf("%s", designator);
  } else {
   int i;
   for (i = 0; i < designator_length &&
       designator[i] != '\0'; i++) {
    if ((unsigned char)designator[i] < 0x80)
     printf("%c", designator[i]);
    else
     printf("%%%02x",
         (unsigned char)designator[i]);
   }
  }
  break;
 }
 case 129: {
  int i;

  for (i = 0; i < designator_length; i++)
   printf("%02X%s", designator[i],
       (i == designator_length - 1) ? "" : " ");
  break;
 }
 default:
  break;
 }
 printf(">");
}
