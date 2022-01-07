
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_3__ {scalar_t__ cipher_code; int cipher_str; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int EINVAL ;
 int KERN_WARNING ;
 TYPE_1__* ecryptfs_cipher_code_str_map ;
 int ecryptfs_printk (int ,char*,scalar_t__) ;
 int strcpy (char*,int ) ;

int ecryptfs_cipher_code_to_string(char *str, u8 cipher_code)
{
 int rc = 0;
 int i;

 str[0] = '\0';
 for (i = 0; i < ARRAY_SIZE(ecryptfs_cipher_code_str_map); i++)
  if (cipher_code == ecryptfs_cipher_code_str_map[i].cipher_code)
   strcpy(str, ecryptfs_cipher_code_str_map[i].cipher_str);
 if (str[0] == '\0') {
  ecryptfs_printk(KERN_WARNING, "Cipher code not recognized: "
    "[%d]\n", cipher_code);
  rc = -EINVAL;
 }
 return rc;
}
