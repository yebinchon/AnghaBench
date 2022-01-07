
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tag {int tagChecksum; void* descCRC; void* descCRCLength; } ;


 void* cpu_to_le16 (int) ;
 int crc_itu_t (int ,char*,int) ;
 int udf_tag_checksum (struct tag*) ;

void udf_update_tag(char *data, int length)
{
 struct tag *tptr = (struct tag *)data;
 length -= sizeof(struct tag);

 tptr->descCRCLength = cpu_to_le16(length);
 tptr->descCRC = cpu_to_le16(crc_itu_t(0, data + sizeof(struct tag), length));
 tptr->tagChecksum = udf_tag_checksum(tptr);
}
