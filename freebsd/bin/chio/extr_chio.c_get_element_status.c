
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint16_t ;
struct changer_element_status_request {int cesr_element_count; struct changer_element_status* cesr_element_status; int cesr_flags; void* cesr_element_base; void* cesr_element_type; } ;
struct changer_element_status {int dummy; } ;
typedef int cesr ;


 int CESR_VOLTAGS ;
 int CHIOGSTATUS ;
 scalar_t__ calloc (size_t,int) ;
 int changer_fd ;
 int changer_name ;
 int err (int,char*,int ) ;
 int errx (int,char*) ;
 int free (struct changer_element_status*) ;
 int ioctl (int ,int ,char*) ;
 int memset (struct changer_element_status_request*,int ,int) ;

__attribute__((used)) static struct changer_element_status *
get_element_status(unsigned int type, unsigned int element, int use_voltags)
{
 struct changer_element_status_request cesr;
 struct changer_element_status *ces;

 ces = (struct changer_element_status *)
     calloc((size_t)1, sizeof(struct changer_element_status));

 if (((void*)0) == ces)
  errx(1, "can't allocate status storage");

 (void)memset(&cesr, 0, sizeof(cesr));

 cesr.cesr_element_type = (uint16_t)type;
 cesr.cesr_element_base = (uint16_t)element;
 cesr.cesr_element_count = 1;
 if (use_voltags)
  cesr.cesr_flags |= CESR_VOLTAGS;
 cesr.cesr_element_status = ces;

 if (ioctl(changer_fd, CHIOGSTATUS, (char *)&cesr) == -1) {
  free(ces);
  err(1, "%s: CHIOGSTATUS", changer_name);

 }

 return ces;
}
