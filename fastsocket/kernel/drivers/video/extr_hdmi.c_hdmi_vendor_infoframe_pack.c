
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct hdmi_vendor_infoframe {size_t length; size_t type; size_t version; int data; } ;
typedef size_t ssize_t ;


 size_t ENOSPC ;
 size_t HDMI_INFOFRAME_HEADER_SIZE ;
 int hdmi_infoframe_checksum (void*,size_t) ;
 int memcpy (size_t*,int ,size_t) ;
 int memset (void*,int ,size_t) ;

ssize_t hdmi_vendor_infoframe_pack(struct hdmi_vendor_infoframe *frame,
       void *buffer, size_t size)
{
 u8 *ptr = buffer;
 size_t length;

 length = HDMI_INFOFRAME_HEADER_SIZE + frame->length;

 if (size < length)
  return -ENOSPC;

 memset(buffer, 0, length);

 ptr[0] = frame->type;
 ptr[1] = frame->version;
 ptr[2] = frame->length;
 ptr[3] = 0;

 memcpy(&ptr[HDMI_INFOFRAME_HEADER_SIZE], frame->data, frame->length);

 hdmi_infoframe_checksum(buffer, length);

 return length;
}
