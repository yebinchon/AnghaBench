; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_read_s64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_read_s64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.cpuset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*)* @cpuset_read_s64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_read_s64(%struct.cgroup* %0, %struct.cftype* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  %8 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %9 = call %struct.cpuset* @cgroup_cs(%struct.cgroup* %8)
  store %struct.cpuset* %9, %struct.cpuset** %6, align 8
  %10 = load %struct.cftype*, %struct.cftype** %5, align 8
  %11 = getelementptr inbounds %struct.cftype, %struct.cftype* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %18 [
    i32 128, label %14
  ]

14:                                               ; preds = %2
  %15 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %16 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %3, align 4
  br label %21

18:                                               ; preds = %2
  %19 = call i32 (...) @BUG()
  br label %20

20:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %14
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.cpuset* @cgroup_cs(%struct.cgroup*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
