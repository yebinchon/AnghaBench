
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwarc {int neep_edc; } ;


 int edc_init (int *) ;

__attribute__((used)) static void hwarc_init(struct hwarc *hwarc)
{
 edc_init(&hwarc->neep_edc);
}
