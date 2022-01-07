
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {unsigned int len; int response; } ;
struct cifs_ses {TYPE_3__ auth_key; TYPE_1__* ntlmssp; } ;
struct TYPE_6__ {int Length; int BufferOffset; } ;
struct TYPE_8__ {char* Challenge; TYPE_2__ TargetInfoArray; int NegotiateFlags; int MessageType; int Signature; } ;
struct TYPE_5__ {void* server_flags; int cryptkey; } ;
typedef TYPE_4__ CHALLENGE_MESSAGE ;


 unsigned int CIFS_CRYPTO_KEY_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NtLmChallenge ;
 int cERROR (int,char*,...) ;
 int kmalloc (unsigned int,int ) ;
 unsigned int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 scalar_t__ memcmp (int ,char*,int) ;
 int memcpy (int ,char*,unsigned int) ;

__attribute__((used)) static int decode_ntlmssp_challenge(char *bcc_ptr, int blob_len,
        struct cifs_ses *ses)
{
 unsigned int tioffset;
 unsigned int tilen;

 CHALLENGE_MESSAGE *pblob = (CHALLENGE_MESSAGE *)bcc_ptr;

 if (blob_len < sizeof(CHALLENGE_MESSAGE)) {
  cERROR(1, "challenge blob len %d too small", blob_len);
  return -EINVAL;
 }

 if (memcmp(pblob->Signature, "NTLMSSP", 8)) {
  cERROR(1, "blob signature incorrect %s", pblob->Signature);
  return -EINVAL;
 }
 if (pblob->MessageType != NtLmChallenge) {
  cERROR(1, "Incorrect message type %d", pblob->MessageType);
  return -EINVAL;
 }

 memcpy(ses->ntlmssp->cryptkey, pblob->Challenge, CIFS_CRYPTO_KEY_SIZE);




 ses->ntlmssp->server_flags = le32_to_cpu(pblob->NegotiateFlags);
 tioffset = le32_to_cpu(pblob->TargetInfoArray.BufferOffset);
 tilen = le16_to_cpu(pblob->TargetInfoArray.Length);
 if (tilen) {
  ses->auth_key.response = kmalloc(tilen, GFP_KERNEL);
  if (!ses->auth_key.response) {
   cERROR(1, "Challenge target info allocation failure");
   return -ENOMEM;
  }
  memcpy(ses->auth_key.response, bcc_ptr + tioffset, tilen);
  ses->auth_key.len = tilen;
 }

 return 0;
}
