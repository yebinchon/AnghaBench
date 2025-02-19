
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scp_msg {int data; int hdr; } ;
struct hda_codec {struct ca0132_spec* spec; } ;
struct ca0132_spec {unsigned int wait_scp_header; unsigned int wait_num_data; int wait_scp; int scp_resp_count; int * scp_resp_data; int scp_resp_header; } ;


 int EINVAL ;
 int EIO ;
 int dspio_write_multiple (struct hda_codec*,unsigned int*,unsigned int) ;
 int extract_scp_header (unsigned int,unsigned int*,unsigned int*,unsigned int*,int *,unsigned int*,int *,int *,unsigned int*) ;
 unsigned long jiffies ;
 int memcpy (int *,int *,int) ;
 int memset (unsigned char*,int ,unsigned int) ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;

__attribute__((used)) static int dspio_send_scp_message(struct hda_codec *codec,
      unsigned char *send_buf,
      unsigned int send_buf_size,
      unsigned char *return_buf,
      unsigned int return_buf_size,
      unsigned int *bytes_returned)
{
 struct ca0132_spec *spec = codec->spec;
 int status = -1;
 unsigned int scp_send_size = 0;
 unsigned int total_size;
 bool waiting_for_resp = 0;
 unsigned int header;
 struct scp_msg *ret_msg;
 unsigned int resp_src_id, resp_target_id;
 unsigned int data_size, src_id, target_id, get_flag, device_flag;

 if (bytes_returned)
  *bytes_returned = 0;


 header = *((unsigned int *)send_buf);
 extract_scp_header(header, &target_id, &src_id, &get_flag, ((void*)0),
      &device_flag, ((void*)0), ((void*)0), &data_size);
 scp_send_size = data_size + 1;
 total_size = (scp_send_size * 4);

 if (send_buf_size < total_size)
  return -EINVAL;

 if (get_flag || device_flag) {
  if (!return_buf || return_buf_size < 4 || !bytes_returned)
   return -EINVAL;

  spec->wait_scp_header = *((unsigned int *)send_buf);


  resp_target_id = src_id;
  resp_src_id = target_id;
  spec->wait_scp_header &= 0xffff0000;
  spec->wait_scp_header |= (resp_src_id << 8) | (resp_target_id);
  spec->wait_num_data = return_buf_size/sizeof(unsigned int) - 1;
  spec->wait_scp = 1;
  waiting_for_resp = 1;
 }

 status = dspio_write_multiple(codec, (unsigned int *)send_buf,
          scp_send_size);
 if (status < 0) {
  spec->wait_scp = 0;
  return status;
 }

 if (waiting_for_resp) {
  unsigned long timeout = jiffies + msecs_to_jiffies(1000);
  memset(return_buf, 0, return_buf_size);
  do {
   msleep(20);
  } while (spec->wait_scp && time_before(jiffies, timeout));
  waiting_for_resp = 0;
  if (!spec->wait_scp) {
   ret_msg = (struct scp_msg *)return_buf;
   memcpy(&ret_msg->hdr, &spec->scp_resp_header, 4);
   memcpy(&ret_msg->data, spec->scp_resp_data,
          spec->wait_num_data);
   *bytes_returned = (spec->scp_resp_count + 1) * 4;
   status = 0;
  } else {
   status = -EIO;
  }
  spec->wait_scp = 0;
 }

 return status;
}
