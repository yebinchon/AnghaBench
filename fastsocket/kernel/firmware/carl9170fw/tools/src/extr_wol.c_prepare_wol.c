
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static void prepare_wol(unsigned char *wol_magic, unsigned char *mac)
{
 int i;

 for (i = 0; i < 16; i++)
  memcpy(&wol_magic[30 + i * 6], mac, 6);
}
