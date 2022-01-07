; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_confset_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/blacklist/bin/extr_conf.c_confset_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf = type { i32 }
%struct.confset = type { i64, %struct.conf* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.conf* (%struct.confset*)* @confset_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.conf* @confset_get(%struct.confset* %0) #0 {
  %2 = alloca %struct.confset*, align 8
  store %struct.confset* %0, %struct.confset** %2, align 8
  %3 = load %struct.confset*, %struct.confset** %2, align 8
  %4 = getelementptr inbounds %struct.confset, %struct.confset* %3, i32 0, i32 1
  %5 = load %struct.conf*, %struct.conf** %4, align 8
  %6 = load %struct.confset*, %struct.confset** %2, align 8
  %7 = getelementptr inbounds %struct.confset, %struct.confset* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = getelementptr inbounds %struct.conf, %struct.conf* %5, i64 %8
  ret %struct.conf* %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
