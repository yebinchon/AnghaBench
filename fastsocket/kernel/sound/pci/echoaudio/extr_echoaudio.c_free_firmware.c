
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int dummy; } ;


 int DE_ACT (char*) ;
 int release_firmware (struct firmware const*) ;

__attribute__((used)) static void free_firmware(const struct firmware *fw_entry)
{
 release_firmware(fw_entry);
 DE_ACT(("firmware released\n"));
}
