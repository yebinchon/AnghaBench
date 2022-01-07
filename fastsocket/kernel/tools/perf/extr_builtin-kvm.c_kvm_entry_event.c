
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_evsel {int name; } ;


 int strcmp (int ,char*) ;

__attribute__((used)) static bool kvm_entry_event(struct perf_evsel *evsel)
{
 return !strcmp(evsel->name, "kvm:kvm_entry");
}
