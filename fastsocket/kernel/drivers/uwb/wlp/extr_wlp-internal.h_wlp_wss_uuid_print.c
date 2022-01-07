
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_uuid {int * data; } ;


 size_t scnprintf (char*,size_t,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline
size_t wlp_wss_uuid_print(char *buf, size_t bufsize, struct wlp_uuid *uuid)
{
 size_t result;

 result = scnprintf(buf, bufsize,
     "%02x:%02x:%02x:%02x:%02x:%02x:"
     "%02x:%02x:%02x:%02x:%02x:%02x:"
     "%02x:%02x:%02x:%02x",
     uuid->data[0], uuid->data[1],
     uuid->data[2], uuid->data[3],
     uuid->data[4], uuid->data[5],
     uuid->data[6], uuid->data[7],
     uuid->data[8], uuid->data[9],
     uuid->data[10], uuid->data[11],
     uuid->data[12], uuid->data[13],
     uuid->data[14], uuid->data[15]);
 return result;
}
