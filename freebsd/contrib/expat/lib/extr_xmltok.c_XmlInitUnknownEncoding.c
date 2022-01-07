
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int utf16Convert; int utf8Convert; } ;
struct TYPE_5__ {unsigned char* type; TYPE_2__ enc; void* isInvalid4; void* isInvalid3; void* isInvalid2; void* isNmstrt4; void* isNmstrt3; void* isNmstrt2; void* isName4; void* isName3; void* isName2; } ;
struct unknown_encoding {int* utf16; int** utf8; TYPE_1__ normal; scalar_t__ convert; void* userData; } ;
struct normal_encoding {int dummy; } ;
struct TYPE_7__ {unsigned char* type; } ;
typedef TYPE_2__ ENCODING ;
typedef scalar_t__ CONVERTER ;


 int BT_LEAD2 ;
 unsigned char BT_MALFORM ;
 unsigned char BT_NAME ;
 unsigned char BT_NMSTRT ;
 unsigned char BT_NONXML ;
 unsigned char BT_OTHER ;
 scalar_t__ UCS2_GET_NAMING (int ,int,int) ;
 scalar_t__ XmlUtf8Encode (int,char*) ;
 scalar_t__ checkCharRefNumber (int) ;
 TYPE_3__ latin1_encoding ;
 int namePages ;
 int nmstrtPages ;
 void* unknown_isInvalid ;
 void* unknown_isName ;
 void* unknown_isNmstrt ;
 int unknown_toUtf16 ;
 int unknown_toUtf8 ;

ENCODING *
XmlInitUnknownEncoding(void *mem,
                       int *table,
                       CONVERTER convert,
                       void *userData)
{
  int i;
  struct unknown_encoding *e = (struct unknown_encoding *)mem;
  for (i = 0; i < (int)sizeof(struct normal_encoding); i++)
    ((char *)mem)[i] = ((char *)&latin1_encoding)[i];
  for (i = 0; i < 128; i++)
    if (latin1_encoding.type[i] != BT_OTHER
        && latin1_encoding.type[i] != BT_NONXML
        && table[i] != i)
      return 0;
  for (i = 0; i < 256; i++) {
    int c = table[i];
    if (c == -1) {
      e->normal.type[i] = BT_MALFORM;

      e->utf16[i] = 0xFFFF;
      e->utf8[i][0] = 1;
      e->utf8[i][1] = 0;
    }
    else if (c < 0) {
      if (c < -4)
        return 0;

      if (!convert)
        return 0;
      e->normal.type[i] = (unsigned char)(BT_LEAD2 - (c + 2));
      e->utf8[i][0] = 0;
      e->utf16[i] = 0;
    }
    else if (c < 0x80) {
      if (latin1_encoding.type[c] != BT_OTHER
          && latin1_encoding.type[c] != BT_NONXML
          && c != i)
        return 0;
      e->normal.type[i] = latin1_encoding.type[c];
      e->utf8[i][0] = 1;
      e->utf8[i][1] = (char)c;
      e->utf16[i] = (unsigned short)(c == 0 ? 0xFFFF : c);
    }
    else if (checkCharRefNumber(c) < 0) {
      e->normal.type[i] = BT_NONXML;

      e->utf16[i] = 0xFFFF;
      e->utf8[i][0] = 1;
      e->utf8[i][1] = 0;
    }
    else {
      if (c > 0xFFFF)
        return 0;
      if (UCS2_GET_NAMING(nmstrtPages, c >> 8, c & 0xff))
        e->normal.type[i] = BT_NMSTRT;
      else if (UCS2_GET_NAMING(namePages, c >> 8, c & 0xff))
        e->normal.type[i] = BT_NAME;
      else
        e->normal.type[i] = BT_OTHER;
      e->utf8[i][0] = (char)XmlUtf8Encode(c, e->utf8[i] + 1);
      e->utf16[i] = (unsigned short)c;
    }
  }
  e->userData = userData;
  e->convert = convert;
  if (convert) {
    e->normal.isName2 = unknown_isName;
    e->normal.isName3 = unknown_isName;
    e->normal.isName4 = unknown_isName;
    e->normal.isNmstrt2 = unknown_isNmstrt;
    e->normal.isNmstrt3 = unknown_isNmstrt;
    e->normal.isNmstrt4 = unknown_isNmstrt;
    e->normal.isInvalid2 = unknown_isInvalid;
    e->normal.isInvalid3 = unknown_isInvalid;
    e->normal.isInvalid4 = unknown_isInvalid;
  }
  e->normal.enc.utf8Convert = unknown_toUtf8;
  e->normal.enc.utf16Convert = unknown_toUtf16;
  return &(e->normal.enc);
}
