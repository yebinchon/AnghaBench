
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ata_cdb {int dummy; } ata_cdb ;
struct us_data {int * extra; } ;
struct scsi_cmnd {int dummy; } ;


 int US_DEBUGP (char*) ;
 int isd200_invoke_transport (struct us_data*,struct scsi_cmnd*,union ata_cdb*) ;
 int isd200_scsi_to_ata (struct scsi_cmnd*,struct us_data*,union ata_cdb*) ;
 int isd200_srb_set_bufflen (struct scsi_cmnd*,int) ;
 int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_set_resid (struct scsi_cmnd*,int ) ;

__attribute__((used)) static void isd200_ata_command(struct scsi_cmnd *srb, struct us_data *us)
{
 int sendToTransport = 1, orig_bufflen;
 union ata_cdb ataCdb;



 if (us->extra == ((void*)0))
  US_DEBUGP("ERROR Driver not initialized\n");

 scsi_set_resid(srb, 0);

 orig_bufflen = scsi_bufflen(srb);
 sendToTransport = isd200_scsi_to_ata(srb, us, &ataCdb);


 if (sendToTransport)
  isd200_invoke_transport(us, srb, &ataCdb);

 isd200_srb_set_bufflen(srb, orig_bufflen);
}
