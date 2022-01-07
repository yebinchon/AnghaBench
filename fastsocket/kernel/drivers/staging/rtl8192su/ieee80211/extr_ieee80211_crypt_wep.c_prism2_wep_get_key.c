
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct prism2_wep_data {int key_len; int key; } ;


 int memcpy (void*,int ,int) ;

__attribute__((used)) static int prism2_wep_get_key(void *key, int len, u8 *seq, void *priv)
{
 struct prism2_wep_data *wep = priv;

 if (len < wep->key_len)
  return -1;

 memcpy(key, wep->key, wep->key_len);

 return wep->key_len;
}
