
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum utrace_resume_action { ____Placeholder_utrace_resume_action } utrace_resume_action ;


 int UTRACE_BLOCKSTEP ;
 int UTRACE_SINGLESTEP ;

__attribute__((used)) static inline bool is_step_resume(enum utrace_resume_action resume)
{
 return resume == UTRACE_BLOCKSTEP || resume == UTRACE_SINGLESTEP;
}
