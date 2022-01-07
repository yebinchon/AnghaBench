; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_try_to_freeze_cgroup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup_freezer.c_try_to_freeze_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.freezer = type { i32 }
%struct.cgroup_iter = type { i32 }
%struct.task_struct = type { i32 }

@CGROUP_FREEZING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.freezer*)* @try_to_freeze_cgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_to_freeze_cgroup(%struct.cgroup* %0, %struct.freezer* %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca %struct.freezer*, align 8
  %5 = alloca %struct.cgroup_iter, align 4
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store %struct.freezer* %1, %struct.freezer** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @CGROUP_FREEZING, align 4
  %9 = load %struct.freezer*, %struct.freezer** %4, align 8
  %10 = getelementptr inbounds %struct.freezer, %struct.freezer* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %12 = call i32 @cgroup_iter_start(%struct.cgroup* %11, %struct.cgroup_iter* %5)
  br label %13

13:                                               ; preds = %38, %26, %21, %2
  %14 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %15 = call %struct.task_struct* @cgroup_iter_next(%struct.cgroup* %14, %struct.cgroup_iter* %5)
  store %struct.task_struct* %15, %struct.task_struct** %6, align 8
  %16 = icmp ne %struct.task_struct* %15, null
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %19 = call i32 @freeze_task(%struct.task_struct* %18, i32 1)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %13

22:                                               ; preds = %17
  %23 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %24 = call i64 @is_task_frozen_enough(%struct.task_struct* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %13

27:                                               ; preds = %22
  %28 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %29 = call i32 @freezing(%struct.task_struct* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %33 = call i32 @freezer_should_skip(%struct.task_struct* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %31, %27
  br label %13

39:                                               ; preds = %13
  %40 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %41 = call i32 @cgroup_iter_end(%struct.cgroup* %40, %struct.cgroup_iter* %5)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %44
  %49 = phi i32 [ %46, %44 ], [ 0, %47 ]
  ret i32 %49
}

declare dso_local i32 @cgroup_iter_start(%struct.cgroup*, %struct.cgroup_iter*) #1

declare dso_local %struct.task_struct* @cgroup_iter_next(%struct.cgroup*, %struct.cgroup_iter*) #1

declare dso_local i32 @freeze_task(%struct.task_struct*, i32) #1

declare dso_local i64 @is_task_frozen_enough(%struct.task_struct*) #1

declare dso_local i32 @freezing(%struct.task_struct*) #1

declare dso_local i32 @freezer_should_skip(%struct.task_struct*) #1

declare dso_local i32 @cgroup_iter_end(%struct.cgroup*, %struct.cgroup_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
