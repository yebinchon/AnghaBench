
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct tag {int tagLocation; void* tagSerialNum; void* descVersion; void* tagIdent; } ;


 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int udf_update_tag (char*,int) ;

void udf_new_tag(char *data, uint16_t ident, uint16_t version, uint16_t snum,
   uint32_t loc, int length)
{
 struct tag *tptr = (struct tag *)data;
 tptr->tagIdent = cpu_to_le16(ident);
 tptr->descVersion = cpu_to_le16(version);
 tptr->tagSerialNum = cpu_to_le16(snum);
 tptr->tagLocation = cpu_to_le32(loc);
 udf_update_tag(data, length);
}
