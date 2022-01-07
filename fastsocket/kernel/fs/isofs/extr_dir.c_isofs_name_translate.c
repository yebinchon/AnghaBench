
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iso_directory_record {char* name; int* name_len; } ;
struct inode {int dummy; } ;



int isofs_name_translate(struct iso_directory_record *de, char *new, struct inode *inode)
{
 char * old = de->name;
 int len = de->name_len[0];
 int i;

 for (i = 0; i < len; i++) {
  unsigned char c = old[i];
  if (!c)
   break;

  if (c >= 'A' && c <= 'Z')
   c |= 0x20;


  if (c == '.' && i == len - 3 && old[i + 1] == ';' && old[i + 2] == '1')
   break;


  if (c == ';' && i == len - 2 && old[i + 1] == '1')
   break;



  if (c == ';' || c == '/')
   c = '.';

  new[i] = c;
 }
 return i;
}
