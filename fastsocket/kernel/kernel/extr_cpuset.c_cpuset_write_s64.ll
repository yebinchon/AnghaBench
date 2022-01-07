; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_write_s64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_write_s64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.cpuset = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i32)* @cpuset_write_s64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_write_s64(%struct.cgroup* %0, %struct.cftype* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpuset*, align 8
  %10 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %12 = call %struct.cpuset* @cgroup_cs(%struct.cgroup* %11)
  store %struct.cpuset* %12, %struct.cpuset** %9, align 8
  %13 = load %struct.cftype*, %struct.cftype** %6, align 8
  %14 = getelementptr inbounds %struct.cftype, %struct.cftype* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %10, align 4
  %16 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %17 = call i32 @cgroup_lock_live_group(%struct.cgroup* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %34

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %28 [
    i32 128, label %24
  ]

24:                                               ; preds = %22
  %25 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @update_relax_domain_level(%struct.cpuset* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %28, %24
  %32 = call i32 (...) @cgroup_unlock()
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %19
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.cpuset* @cgroup_cs(%struct.cgroup*) #1

declare dso_local i32 @cgroup_lock_live_group(%struct.cgroup*) #1

declare dso_local i32 @update_relax_domain_level(%struct.cpuset*, i32) #1

declare dso_local i32 @cgroup_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
