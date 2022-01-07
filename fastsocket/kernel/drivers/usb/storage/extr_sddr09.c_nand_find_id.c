
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_flash_dev {unsigned char model_id; } ;


 int ARRAY_SIZE (struct nand_flash_dev*) ;
 struct nand_flash_dev* nand_flash_ids ;

__attribute__((used)) static struct nand_flash_dev *
nand_find_id(unsigned char id) {
 int i;

 for (i = 0; i < ARRAY_SIZE(nand_flash_ids); i++)
  if (nand_flash_ids[i].model_id == id)
   return &(nand_flash_ids[i]);
 return ((void*)0);
}
