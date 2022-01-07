
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firmware {int data; } ;


 int kfree (struct firmware const*) ;
 int vfree (int ) ;

__attribute__((used)) static void free_fw(const struct firmware *fw)
{
 if (fw) {
  vfree(fw->data);
  kfree(fw);
 }
}
