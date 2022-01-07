
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ MergePoolSize; } ;


 scalar_t__ isProfileMergeRequested () ;
 TYPE_1__ lprofCurFilename ;

__attribute__((used)) static unsigned doMerging() {
  return lprofCurFilename.MergePoolSize || isProfileMergeRequested();
}
