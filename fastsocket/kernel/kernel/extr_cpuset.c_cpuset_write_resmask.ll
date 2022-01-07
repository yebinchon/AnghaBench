; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_write_resmask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_write_resmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.cpuset = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i8*)* @cpuset_write_resmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_write_resmask(%struct.cgroup* %0, %struct.cftype* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cpuset*, align 8
  %10 = alloca %struct.cpuset*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %12 = call %struct.cpuset* @cgroup_cs(%struct.cgroup* %11)
  store %struct.cpuset* %12, %struct.cpuset** %9, align 8
  %13 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %14 = call i32 @cgroup_lock_live_group(%struct.cgroup* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %50

19:                                               ; preds = %3
  %20 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %21 = call %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset* %20)
  store %struct.cpuset* %21, %struct.cpuset** %10, align 8
  %22 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %23 = icmp ne %struct.cpuset* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %47

27:                                               ; preds = %19
  %28 = load %struct.cftype*, %struct.cftype** %6, align 8
  %29 = getelementptr inbounds %struct.cftype, %struct.cftype* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %41 [
    i32 129, label %31
    i32 128, label %36
  ]

31:                                               ; preds = %27
  %32 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %33 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = call i32 @update_cpumask(%struct.cpuset* %32, %struct.cpuset* %33, i8* %34)
  store i32 %35, i32* %8, align 4
  br label %44

36:                                               ; preds = %27
  %37 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %38 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @update_nodemask(%struct.cpuset* %37, %struct.cpuset* %38, i8* %39)
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %27
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %36, %31
  %45 = load %struct.cpuset*, %struct.cpuset** %10, align 8
  %46 = call i32 @free_trial_cpuset(%struct.cpuset* %45)
  br label %47

47:                                               ; preds = %44, %24
  %48 = call i32 (...) @cgroup_unlock()
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.cpuset* @cgroup_cs(%struct.cgroup*) #1

declare dso_local i32 @cgroup_lock_live_group(%struct.cgroup*) #1

declare dso_local %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset*) #1

declare dso_local i32 @update_cpumask(%struct.cpuset*, %struct.cpuset*, i8*) #1

declare dso_local i32 @update_nodemask(%struct.cpuset*, %struct.cpuset*, i8*) #1

declare dso_local i32 @free_trial_cpuset(%struct.cpuset*) #1

declare dso_local i32 @cgroup_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
