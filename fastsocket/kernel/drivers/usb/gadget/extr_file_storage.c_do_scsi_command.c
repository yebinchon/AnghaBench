
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct fsg_dev {int* cmnd; int data_size_from_cmnd; int cmnd_size; scalar_t__ data_dir; int residue; int filesem; TYPE_1__* curlun; scalar_t__ short_packet_received; scalar_t__ phase_error; struct fsg_buffhd* next_buffhd_to_fill; struct fsg_buffhd* next_buffhd_to_drain; } ;
struct fsg_buffhd {scalar_t__ state; TYPE_2__* inreq; } ;
struct TYPE_6__ {int cdrom; } ;
struct TYPE_5__ {int length; } ;
struct TYPE_4__ {int sense_data; } ;


 scalar_t__ BUF_STATE_EMPTY ;
 scalar_t__ BUF_STATE_FULL ;
 scalar_t__ DATA_DIR_FROM_HOST ;
 scalar_t__ DATA_DIR_NONE ;
 scalar_t__ DATA_DIR_TO_HOST ;
 scalar_t__ DATA_DIR_UNKNOWN ;
 int EINTR ;
 int EINVAL ;
 int SS_INVALID_COMMAND ;
 int check_command (struct fsg_dev*,int,scalar_t__,int,int,char*) ;
 int current ;
 int do_inquiry (struct fsg_dev*,struct fsg_buffhd*) ;
 int do_mode_select (struct fsg_dev*,struct fsg_buffhd*) ;
 int do_mode_sense (struct fsg_dev*,struct fsg_buffhd*) ;
 int do_prevent_allow (struct fsg_dev*) ;
 int do_read (struct fsg_dev*) ;
 int do_read_capacity (struct fsg_dev*,struct fsg_buffhd*) ;
 int do_read_format_capacities (struct fsg_dev*,struct fsg_buffhd*) ;
 int do_read_header (struct fsg_dev*,struct fsg_buffhd*) ;
 int do_read_toc (struct fsg_dev*,struct fsg_buffhd*) ;
 int do_request_sense (struct fsg_dev*,struct fsg_buffhd*) ;
 int do_start_stop (struct fsg_dev*) ;
 int do_synchronize_cache (struct fsg_dev*) ;
 int do_verify (struct fsg_dev*) ;
 int do_write (struct fsg_dev*) ;
 int down_read (int *) ;
 int dump_cdb (struct fsg_dev*) ;
 int get_unaligned_be16 (int*) ;
 int get_unaligned_be32 (int*) ;
 int min (int ,int) ;
 TYPE_3__ mod_data ;
 scalar_t__ signal_pending (int ) ;
 int sleep_thread (struct fsg_dev*) ;
 int sprintf (char*,char*,int) ;
 int up_read (int *) ;

__attribute__((used)) static int do_scsi_command(struct fsg_dev *fsg)
{
 struct fsg_buffhd *bh;
 int rc;
 int reply = -EINVAL;
 int i;
 static char unknown[16];

 dump_cdb(fsg);


 bh = fsg->next_buffhd_to_drain = fsg->next_buffhd_to_fill;
 while (bh->state != BUF_STATE_EMPTY) {
  rc = sleep_thread(fsg);
  if (rc)
   return rc;
 }
 fsg->phase_error = 0;
 fsg->short_packet_received = 0;

 down_read(&fsg->filesem);
 switch (fsg->cmnd[0]) {

 case 151:
  fsg->data_size_from_cmnd = fsg->cmnd[4];
  if ((reply = check_command(fsg, 6, DATA_DIR_TO_HOST,
    (1<<4), 0,
    "INQUIRY")) == 0)
   reply = do_inquiry(fsg, bh);
  break;

 case 149:
  fsg->data_size_from_cmnd = fsg->cmnd[4];
  if ((reply = check_command(fsg, 6, DATA_DIR_FROM_HOST,
    (1<<1) | (1<<4), 0,
    "MODE SELECT(6)")) == 0)
   reply = do_mode_select(fsg, bh);
  break;

 case 150:
  fsg->data_size_from_cmnd = get_unaligned_be16(&fsg->cmnd[7]);
  if ((reply = check_command(fsg, 10, DATA_DIR_FROM_HOST,
    (1<<1) | (3<<7), 0,
    "MODE SELECT(10)")) == 0)
   reply = do_mode_select(fsg, bh);
  break;

 case 147:
  fsg->data_size_from_cmnd = fsg->cmnd[4];
  if ((reply = check_command(fsg, 6, DATA_DIR_TO_HOST,
    (1<<1) | (1<<2) | (1<<4), 0,
    "MODE SENSE(6)")) == 0)
   reply = do_mode_sense(fsg, bh);
  break;

 case 148:
  fsg->data_size_from_cmnd = get_unaligned_be16(&fsg->cmnd[7]);
  if ((reply = check_command(fsg, 10, DATA_DIR_TO_HOST,
    (1<<1) | (1<<2) | (3<<7), 0,
    "MODE SENSE(10)")) == 0)
   reply = do_mode_sense(fsg, bh);
  break;

 case 146:
  fsg->data_size_from_cmnd = 0;
  if ((reply = check_command(fsg, 6, DATA_DIR_NONE,
    (1<<4), 0,
    "PREVENT-ALLOW MEDIUM REMOVAL")) == 0)
   reply = do_prevent_allow(fsg);
  break;

 case 143:
  i = fsg->cmnd[4];
  fsg->data_size_from_cmnd = (i == 0 ? 256 : i) << 9;
  if ((reply = check_command(fsg, 6, DATA_DIR_TO_HOST,
    (7<<1) | (1<<4), 1,
    "READ(6)")) == 0)
   reply = do_read(fsg);
  break;

 case 145:
  fsg->data_size_from_cmnd =
    get_unaligned_be16(&fsg->cmnd[7]) << 9;
  if ((reply = check_command(fsg, 10, DATA_DIR_TO_HOST,
    (1<<1) | (0xf<<2) | (3<<7), 1,
    "READ(10)")) == 0)
   reply = do_read(fsg);
  break;

 case 144:
  fsg->data_size_from_cmnd =
    get_unaligned_be32(&fsg->cmnd[6]) << 9;
  if ((reply = check_command(fsg, 12, DATA_DIR_TO_HOST,
    (1<<1) | (0xf<<2) | (0xf<<6), 1,
    "READ(12)")) == 0)
   reply = do_read(fsg);
  break;

 case 142:
  fsg->data_size_from_cmnd = 8;
  if ((reply = check_command(fsg, 10, DATA_DIR_TO_HOST,
    (0xf<<2) | (1<<8), 1,
    "READ CAPACITY")) == 0)
   reply = do_read_capacity(fsg, bh);
  break;

 case 140:
  if (!mod_data.cdrom)
   goto unknown_cmnd;
  fsg->data_size_from_cmnd = get_unaligned_be16(&fsg->cmnd[7]);
  if ((reply = check_command(fsg, 10, DATA_DIR_TO_HOST,
    (3<<7) | (0x1f<<1), 1,
    "READ HEADER")) == 0)
   reply = do_read_header(fsg, bh);
  break;

 case 139:
  if (!mod_data.cdrom)
   goto unknown_cmnd;
  fsg->data_size_from_cmnd = get_unaligned_be16(&fsg->cmnd[7]);
  if ((reply = check_command(fsg, 10, DATA_DIR_TO_HOST,
    (7<<6) | (1<<1), 1,
    "READ TOC")) == 0)
   reply = do_read_toc(fsg, bh);
  break;

 case 141:
  fsg->data_size_from_cmnd = get_unaligned_be16(&fsg->cmnd[7]);
  if ((reply = check_command(fsg, 10, DATA_DIR_TO_HOST,
    (3<<7), 1,
    "READ FORMAT CAPACITIES")) == 0)
   reply = do_read_format_capacities(fsg, bh);
  break;

 case 137:
  fsg->data_size_from_cmnd = fsg->cmnd[4];
  if ((reply = check_command(fsg, 6, DATA_DIR_TO_HOST,
    (1<<4), 0,
    "REQUEST SENSE")) == 0)
   reply = do_request_sense(fsg, bh);
  break;

 case 134:
  fsg->data_size_from_cmnd = 0;
  if ((reply = check_command(fsg, 6, DATA_DIR_NONE,
    (1<<1) | (1<<4), 0,
    "START-STOP UNIT")) == 0)
   reply = do_start_stop(fsg);
  break;

 case 133:
  fsg->data_size_from_cmnd = 0;
  if ((reply = check_command(fsg, 10, DATA_DIR_NONE,
    (0xf<<2) | (3<<7), 1,
    "SYNCHRONIZE CACHE")) == 0)
   reply = do_synchronize_cache(fsg);
  break;

 case 132:
  fsg->data_size_from_cmnd = 0;
  reply = check_command(fsg, 6, DATA_DIR_NONE,
    0, 1,
    "TEST UNIT READY");
  break;



 case 131:
  fsg->data_size_from_cmnd = 0;
  if ((reply = check_command(fsg, 10, DATA_DIR_NONE,
    (1<<1) | (0xf<<2) | (3<<7), 1,
    "VERIFY")) == 0)
   reply = do_verify(fsg);
  break;

 case 128:
  i = fsg->cmnd[4];
  fsg->data_size_from_cmnd = (i == 0 ? 256 : i) << 9;
  if ((reply = check_command(fsg, 6, DATA_DIR_FROM_HOST,
    (7<<1) | (1<<4), 1,
    "WRITE(6)")) == 0)
   reply = do_write(fsg);
  break;

 case 130:
  fsg->data_size_from_cmnd =
    get_unaligned_be16(&fsg->cmnd[7]) << 9;
  if ((reply = check_command(fsg, 10, DATA_DIR_FROM_HOST,
    (1<<1) | (0xf<<2) | (3<<7), 1,
    "WRITE(10)")) == 0)
   reply = do_write(fsg);
  break;

 case 129:
  fsg->data_size_from_cmnd =
    get_unaligned_be32(&fsg->cmnd[6]) << 9;
  if ((reply = check_command(fsg, 12, DATA_DIR_FROM_HOST,
    (1<<1) | (0xf<<2) | (0xf<<6), 1,
    "WRITE(12)")) == 0)
   reply = do_write(fsg);
  break;





 case 152:
 case 138:
 case 136:
 case 135:


 default:
 unknown_cmnd:
  fsg->data_size_from_cmnd = 0;
  sprintf(unknown, "Unknown x%02x", fsg->cmnd[0]);
  if ((reply = check_command(fsg, fsg->cmnd_size,
    DATA_DIR_UNKNOWN, 0xff, 0, unknown)) == 0) {
   fsg->curlun->sense_data = SS_INVALID_COMMAND;
   reply = -EINVAL;
  }
  break;
 }
 up_read(&fsg->filesem);

 if (reply == -EINTR || signal_pending(current))
  return -EINTR;


 if (reply == -EINVAL)
  reply = 0;
 if (reply >= 0 && fsg->data_dir == DATA_DIR_TO_HOST) {
  reply = min((u32) reply, fsg->data_size_from_cmnd);
  bh->inreq->length = reply;
  bh->state = BUF_STATE_FULL;
  fsg->residue -= reply;
 }

 return 0;
}
