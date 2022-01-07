
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecryptfs_session_key {int encrypted_key_size; char* encrypted_key; } ;


 int ECRYPTFS_SIG_SIZE_HEX ;
 char ECRYPTFS_TAG_64_PACKET_TYPE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int KERN_ERR ;
 int ecryptfs_printk (int ,char*) ;
 int ecryptfs_write_packet_length (char*,int,size_t*) ;
 char* kmalloc (size_t,int ) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int
write_tag_64_packet(char *signature, struct ecryptfs_session_key *session_key,
      char **packet, size_t *packet_len)
{
 size_t i = 0;
 size_t data_len;
 size_t packet_size_len;
 char *message;
 int rc;
 data_len = (5 + ECRYPTFS_SIG_SIZE_HEX
      + session_key->encrypted_key_size);
 *packet = kmalloc(data_len, GFP_KERNEL);
 message = *packet;
 if (!message) {
  ecryptfs_printk(KERN_ERR, "Unable to allocate memory\n");
  rc = -ENOMEM;
  goto out;
 }
 message[i++] = ECRYPTFS_TAG_64_PACKET_TYPE;
 rc = ecryptfs_write_packet_length(&message[i], ECRYPTFS_SIG_SIZE_HEX,
       &packet_size_len);
 if (rc) {
  ecryptfs_printk(KERN_ERR, "Error generating tag 64 packet "
    "header; cannot generate packet length\n");
  goto out;
 }
 i += packet_size_len;
 memcpy(&message[i], signature, ECRYPTFS_SIG_SIZE_HEX);
 i += ECRYPTFS_SIG_SIZE_HEX;
 rc = ecryptfs_write_packet_length(&message[i],
       session_key->encrypted_key_size,
       &packet_size_len);
 if (rc) {
  ecryptfs_printk(KERN_ERR, "Error generating tag 64 packet "
    "header; cannot generate packet length\n");
  goto out;
 }
 i += packet_size_len;
 memcpy(&message[i], session_key->encrypted_key,
        session_key->encrypted_key_size);
 i += session_key->encrypted_key_size;
 *packet_len = i;
out:
 return rc;
}
