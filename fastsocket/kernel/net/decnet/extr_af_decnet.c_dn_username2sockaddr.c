
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dn {unsigned char sdn_objnum; void* sdn_objnamel; int sdn_objname; } ;


 int DN_MAXOBJL ;
 void* cpu_to_le16 (int ) ;
 int le16_to_cpu (void*) ;
 int memcpy (int ,unsigned char*,int) ;
 int memset (int ,int ,int ) ;

int dn_username2sockaddr(unsigned char *data, int len, struct sockaddr_dn *sdn, unsigned char *fmt)
{
 unsigned char type;
 int size = len;
 int namel = 12;

 sdn->sdn_objnum = 0;
 sdn->sdn_objnamel = cpu_to_le16(0);
 memset(sdn->sdn_objname, 0, DN_MAXOBJL);

 if (len < 2)
  return -1;

 len -= 2;
 *fmt = *data++;
 type = *data++;

 switch(*fmt) {
  case 0:
   sdn->sdn_objnum = type;
   return 2;
  case 1:
   namel = 16;
   break;
  case 2:
   len -= 4;
   data += 4;
   break;
  case 4:
   len -= 8;
   data += 8;
   break;
  default:
   return -1;
 }

 len -= 1;

 if (len < 0)
  return -1;

 sdn->sdn_objnamel = cpu_to_le16(*data++);
 len -= le16_to_cpu(sdn->sdn_objnamel);

 if ((len < 0) || (le16_to_cpu(sdn->sdn_objnamel) > namel))
  return -1;

 memcpy(sdn->sdn_objname, data, le16_to_cpu(sdn->sdn_objnamel));

 return size - len;
}
