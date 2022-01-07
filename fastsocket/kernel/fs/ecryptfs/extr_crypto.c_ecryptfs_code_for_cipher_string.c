
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ecryptfs_cipher_code_str_map_elem {char* cipher_str; int cipher_code; } ;


 int ARRAY_SIZE (struct ecryptfs_cipher_code_str_map_elem*) ;
 int RFC2440_CIPHER_AES_128 ;
 int RFC2440_CIPHER_AES_192 ;
 int RFC2440_CIPHER_AES_256 ;
 struct ecryptfs_cipher_code_str_map_elem* ecryptfs_cipher_code_str_map ;
 scalar_t__ strcmp (char*,char*) ;

u8 ecryptfs_code_for_cipher_string(char *cipher_name, size_t key_bytes)
{
 int i;
 u8 code = 0;
 struct ecryptfs_cipher_code_str_map_elem *map =
  ecryptfs_cipher_code_str_map;

 if (strcmp(cipher_name, "aes") == 0) {
  switch (key_bytes) {
  case 16:
   code = RFC2440_CIPHER_AES_128;
   break;
  case 24:
   code = RFC2440_CIPHER_AES_192;
   break;
  case 32:
   code = RFC2440_CIPHER_AES_256;
  }
 } else {
  for (i = 0; i < ARRAY_SIZE(ecryptfs_cipher_code_str_map); i++)
   if (strcmp(cipher_name, map[i].cipher_str) == 0) {
    code = map[i].cipher_code;
    break;
   }
 }
 return code;
}
