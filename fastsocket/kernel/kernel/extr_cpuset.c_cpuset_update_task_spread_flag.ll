; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_update_task_spread_flag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_update_task_spread_flag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32 }
%struct.task_struct = type { i32 }

@PF_SPREAD_PAGE = common dso_local global i32 0, align 4
@PF_SPREAD_SLAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuset*, %struct.task_struct*)* @cpuset_update_task_spread_flag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpuset_update_task_spread_flag(%struct.cpuset* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca %struct.task_struct*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %5 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %6 = call i64 @is_spread_page(%struct.cpuset* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @PF_SPREAD_PAGE, align 4
  %10 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %21

14:                                               ; preds = %2
  %15 = load i32, i32* @PF_SPREAD_PAGE, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %18 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %14, %8
  %22 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %23 = call i64 @is_spread_slab(%struct.cpuset* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @PF_SPREAD_SLAB, align 4
  %27 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %28 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %38

31:                                               ; preds = %21
  %32 = load i32, i32* @PF_SPREAD_SLAB, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %35 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %25
  ret void
}

declare dso_local i64 @is_spread_page(%struct.cpuset*) #1

declare dso_local i64 @is_spread_slab(%struct.cpuset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
