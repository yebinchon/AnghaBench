
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __u16 ;
 int SMBOPEN_OAPPEND ;
 int SMBOPEN_OCREATE ;
 int SMBOPEN_OTRUNC ;
 int cFYI (int,char*,int) ;

__attribute__((used)) static __u16 convert_disposition(int disposition)
{
 __u16 ofun = 0;

 switch (disposition) {
  case 128:
   ofun = SMBOPEN_OCREATE | SMBOPEN_OTRUNC;
   break;
  case 132:
   ofun = SMBOPEN_OAPPEND;
   break;
  case 133:
   ofun = SMBOPEN_OCREATE;
   break;
  case 131:
   ofun = SMBOPEN_OCREATE | SMBOPEN_OAPPEND;
   break;
  case 130:
   ofun = SMBOPEN_OTRUNC;
   break;
  case 129:
   ofun = SMBOPEN_OCREATE | SMBOPEN_OTRUNC;
   break;
  default:
   cFYI(1, "unknown disposition %d", disposition);
   ofun = SMBOPEN_OAPPEND;
 }
 return ofun;
}
