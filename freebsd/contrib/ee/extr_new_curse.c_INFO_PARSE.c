
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * Booleans ;
 char* Data_Line ;
 int Data_Line_len ;
 int Fildes ;
 int Flip_Bytes ;
 void* Get_int () ;
 void** Numbers ;
 int ** String_table ;
 int * Strings ;
 char* TERM_data_ptr ;
 int TRUE ;
 int bt__ ;
 int close (int ) ;
 int free (char*) ;
 void* malloc (int) ;
 int memcpy (int *,char*,int) ;
 int read (int ,char*,int) ;

int
INFO_PARSE()
{
 int offset;
 int magic_number = 0;
 int counter = 0;
 int Num_names = 0;
 int Num_bools = 0;
 int Num_ints = 0;
 int Num_strings = 0;
 int string_table_len = 0;
 char *temp_ptr;

 TERM_data_ptr = Data_Line = malloc((10240 * (sizeof(char))));
 Data_Line_len = read(Fildes, Data_Line, 10240);
 if ((Data_Line_len >= 10240) || (Data_Line_len < 0))
  return(0);



 magic_number = Get_int();



 if (magic_number != 282)
 {
  Flip_Bytes = TRUE;
  TERM_data_ptr--;
  TERM_data_ptr--;
  magic_number = Get_int();
  if (magic_number != 282)
   return(0);
 }



 Num_names = Get_int();
 Num_bools = Get_int();
 Num_ints = Get_int();
 Num_strings = Get_int();
 string_table_len = Get_int();
 Strings = malloc(string_table_len);
 while (Num_names > 0)
 {
  TERM_data_ptr++;
  Num_names--;
 }
 counter = 0;
 while (Num_bools)
 {
  Num_bools--;
  Booleans[counter++] = *TERM_data_ptr++;
 }
 if ((unsigned long)TERM_data_ptr & 1)
  TERM_data_ptr++;
 counter = 0;
 while (Num_ints)
 {
  Num_ints--;
  Numbers[counter] = Get_int();
  counter++;
 }
 temp_ptr = TERM_data_ptr + Num_strings + Num_strings;
 memcpy(Strings, temp_ptr, string_table_len);
 counter = bt__;
 while (Num_strings)
 {
  Num_strings--;
  if ((offset=Get_int()) != -1)
  {
   if (String_table[counter] == ((void*)0))
    String_table[counter] = Strings + offset;
  }
  else
   String_table[counter] = ((void*)0);
  counter++;
 }
 close(Fildes);
 free(Data_Line);
 return(TRUE);
}
