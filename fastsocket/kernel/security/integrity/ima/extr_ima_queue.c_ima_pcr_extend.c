
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int CONFIG_IMA_MEASURE_PCR_IDX ;
 int TPM_ANY_NUM ;
 int ima_used_chip ;
 int pr_err (char*) ;
 int tpm_pcr_extend (int ,int ,int const*) ;

__attribute__((used)) static int ima_pcr_extend(const u8 *hash)
{
 int result = 0;

 if (!ima_used_chip)
  return result;

 result = tpm_pcr_extend(TPM_ANY_NUM, CONFIG_IMA_MEASURE_PCR_IDX, hash);
 if (result != 0)
  pr_err("IMA: Error Communicating to TPM chip\n");
 return result;
}
