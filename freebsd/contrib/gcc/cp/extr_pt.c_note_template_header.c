
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int processing_specialization ;
 int template_header_count ;

__attribute__((used)) static void
note_template_header (int specialization)
{
  processing_specialization = specialization;
  template_header_count++;
}
