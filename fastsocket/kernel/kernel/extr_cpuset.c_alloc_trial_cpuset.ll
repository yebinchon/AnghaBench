; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_alloc_trial_cpuset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_alloc_trial_cpuset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cpuset* (%struct.cpuset*)* @alloc_trial_cpuset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cpuset* @alloc_trial_cpuset(%struct.cpuset* %0) #0 {
  %2 = alloca %struct.cpuset*, align 8
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca %struct.cpuset*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  %5 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.cpuset* @kmemdup(%struct.cpuset* %5, i32 4, i32 %6)
  store %struct.cpuset* %7, %struct.cpuset** %4, align 8
  %8 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %9 = icmp ne %struct.cpuset* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.cpuset* null, %struct.cpuset** %2, align 8
  br label %29

11:                                               ; preds = %1
  %12 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %13 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %12, i32 0, i32 0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32 @alloc_cpumask_var(i32* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %19 = call i32 @kfree(%struct.cpuset* %18)
  store %struct.cpuset* null, %struct.cpuset** %2, align 8
  br label %29

20:                                               ; preds = %11
  %21 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %22 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %25 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @cpumask_copy(i32 %23, i32 %26)
  %28 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  store %struct.cpuset* %28, %struct.cpuset** %2, align 8
  br label %29

29:                                               ; preds = %20, %17, %10
  %30 = load %struct.cpuset*, %struct.cpuset** %2, align 8
  ret %struct.cpuset* %30
}

declare dso_local %struct.cpuset* @kmemdup(%struct.cpuset*, i32, i32) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @kfree(%struct.cpuset*) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
