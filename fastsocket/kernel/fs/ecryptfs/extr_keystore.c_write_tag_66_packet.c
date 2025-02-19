
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct ecryptfs_crypt_stat {int key_size; char* key; } ;


 int ECRYPTFS_SIG_SIZE_HEX ;
 char ECRYPTFS_TAG_66_PACKET_TYPE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int ecryptfs_printk (int ,char*) ;
 int ecryptfs_write_packet_length (char*,int,size_t*) ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int
write_tag_66_packet(char *signature, u8 cipher_code,
      struct ecryptfs_crypt_stat *crypt_stat, char **packet,
      size_t *packet_len)
{
 size_t i = 0;
 size_t j;
 size_t data_len;
 size_t checksum = 0;
 size_t packet_size_len;
 char *message;
 int rc;
 data_len = (5 + ECRYPTFS_SIG_SIZE_HEX + crypt_stat->key_size);
 *packet = kmalloc(data_len, GFP_KERNEL);
 message = *packet;
 if (!message) {
  ecryptfs_printk(KERN_ERR, "Unable to allocate memory\n");
  rc = -ENOMEM;
  goto out;
 }
 message[i++] = ECRYPTFS_TAG_66_PACKET_TYPE;
 rc = ecryptfs_write_packet_length(&message[i], ECRYPTFS_SIG_SIZE_HEX,
       &packet_size_len);
 if (rc) {
  ecryptfs_printk(KERN_ERR, "Error generating tag 66 packet "
    "header; cannot generate packet length\n");
  goto out;
 }
 i += packet_size_len;
 memcpy(&message[i], signature, ECRYPTFS_SIG_SIZE_HEX);
 i += ECRYPTFS_SIG_SIZE_HEX;

 rc = ecryptfs_write_packet_length(&message[i], crypt_stat->key_size + 3,
       &packet_size_len);
 if (rc) {
  ecryptfs_printk(KERN_ERR, "Error generating tag 66 packet "
    "header; cannot generate packet length\n");
  goto out;
 }
 i += packet_size_len;
 message[i++] = cipher_code;
 memcpy(&message[i], crypt_stat->key, crypt_stat->key_size);
 i += crypt_stat->key_size;
 for (j = 0; j < crypt_stat->key_size; j++)
  checksum += crypt_stat->key[j];
 message[i++] = (checksum / 256) % 256;
 message[i++] = (checksum % 256);
 *packet_len = i;
out:
 return rc;
}
