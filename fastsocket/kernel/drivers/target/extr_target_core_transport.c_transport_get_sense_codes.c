
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct se_cmd {int scsi_ascq; int scsi_asc; } ;



__attribute__((used)) static int transport_get_sense_codes(
 struct se_cmd *cmd,
 u8 *asc,
 u8 *ascq)
{
 *asc = cmd->scsi_asc;
 *ascq = cmd->scsi_ascq;

 return 0;
}
