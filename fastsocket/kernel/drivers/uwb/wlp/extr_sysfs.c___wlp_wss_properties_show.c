
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_wss {int name; int virtual_addr; int tag; int master_key; int secure_status; int hash; int bcast; int wssid; } ;
typedef int ssize_t ;


 int scnprintf (char*,int,char*,...) ;
 int uwb_mac_addr_print (char*,int,int *) ;
 int wlp_wss_key_print (char*,int,int ) ;
 int wlp_wss_uuid_print (char*,size_t,int *) ;

__attribute__((used)) static
ssize_t __wlp_wss_properties_show(struct wlp_wss *wss, char *buf,
      size_t bufsize)
{
 ssize_t result;

 result = wlp_wss_uuid_print(buf, bufsize, &wss->wssid);
 result += scnprintf(buf + result, bufsize - result, " ");
 result += uwb_mac_addr_print(buf + result, bufsize - result,
         &wss->bcast);
 result += scnprintf(buf + result, bufsize - result,
       " 0x%02x %u ", wss->hash, wss->secure_status);
 result += wlp_wss_key_print(buf + result, bufsize - result,
        wss->master_key);
 result += scnprintf(buf + result, bufsize - result, " 0x%02x ",
       wss->tag);
 result += uwb_mac_addr_print(buf + result, bufsize - result,
         &wss->virtual_addr);
 result += scnprintf(buf + result, bufsize - result, " %s", wss->name);
 result += scnprintf(buf + result, bufsize - result,
       "\n\n#WSSID\n#WSS broadcast address\n"
       "#WSS hash\n#WSS secure status\n"
       "#WSS master key\n#WSS local tag\n"
       "#WSS local virtual EUI-48\n#WSS name\n");
 return result;
}
