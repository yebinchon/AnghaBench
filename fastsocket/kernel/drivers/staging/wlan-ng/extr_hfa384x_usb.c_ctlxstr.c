
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t CTLX_STATE ;



__attribute__((used)) static inline const char *ctlxstr(CTLX_STATE s)
{
 static const char *ctlx_str[] = {
  "Initial state",
  "Complete",
  "Request failed",
  "Request pending",
  "Request packet submitted",
  "Request packet completed",
  "Response packet completed"
 };

 return ctlx_str[s];
}
