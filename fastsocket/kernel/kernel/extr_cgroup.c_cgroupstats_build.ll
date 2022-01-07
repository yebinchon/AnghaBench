; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroupstats_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cgroup.c_cgroupstats_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroupstats = type { i32, i32, i32, i32, i32 }
%struct.dentry = type { %struct.cgroup*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.cgroup = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32* }
%struct.cgroup_iter = type { i32 }
%struct.task_struct = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@cgroup_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cgroupstats_build(%struct.cgroupstats* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.cgroupstats*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.cgroup_iter, align 4
  %8 = alloca %struct.task_struct*, align 8
  store %struct.cgroupstats* %0, %struct.cgroupstats** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 2
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, @cgroup_ops
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @S_ISDIR(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17, %2
  br label %74

26:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  %27 = load %struct.dentry*, %struct.dentry** %4, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.cgroup*, %struct.cgroup** %28, align 8
  store %struct.cgroup* %29, %struct.cgroup** %6, align 8
  %30 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %31 = call i32 @cgroup_iter_start(%struct.cgroup* %30, %struct.cgroup_iter* %7)
  br label %32

32:                                               ; preds = %70, %26
  %33 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %34 = call %struct.task_struct* @cgroup_iter_next(%struct.cgroup* %33, %struct.cgroup_iter* %7)
  store %struct.task_struct* %34, %struct.task_struct** %8, align 8
  %35 = icmp ne %struct.task_struct* %34, null
  br i1 %35, label %36, label %71

36:                                               ; preds = %32
  %37 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %60 [
    i32 130, label %40
    i32 131, label %45
    i32 128, label %50
    i32 129, label %55
  ]

40:                                               ; preds = %36
  %41 = load %struct.cgroupstats*, %struct.cgroupstats** %3, align 8
  %42 = getelementptr inbounds %struct.cgroupstats, %struct.cgroupstats* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %70

45:                                               ; preds = %36
  %46 = load %struct.cgroupstats*, %struct.cgroupstats** %3, align 8
  %47 = getelementptr inbounds %struct.cgroupstats, %struct.cgroupstats* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %70

50:                                               ; preds = %36
  %51 = load %struct.cgroupstats*, %struct.cgroupstats** %3, align 8
  %52 = getelementptr inbounds %struct.cgroupstats, %struct.cgroupstats* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %70

55:                                               ; preds = %36
  %56 = load %struct.cgroupstats*, %struct.cgroupstats** %3, align 8
  %57 = getelementptr inbounds %struct.cgroupstats, %struct.cgroupstats* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %70

60:                                               ; preds = %36
  %61 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %62 = call i32 @delayacct_is_task_waiting_on_io(%struct.task_struct* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.cgroupstats*, %struct.cgroupstats** %3, align 8
  %66 = getelementptr inbounds %struct.cgroupstats, %struct.cgroupstats* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %64, %60
  br label %70

70:                                               ; preds = %69, %55, %50, %45, %40
  br label %32

71:                                               ; preds = %32
  %72 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %73 = call i32 @cgroup_iter_end(%struct.cgroup* %72, %struct.cgroup_iter* %7)
  br label %74

74:                                               ; preds = %71, %25
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @cgroup_iter_start(%struct.cgroup*, %struct.cgroup_iter*) #1

declare dso_local %struct.task_struct* @cgroup_iter_next(%struct.cgroup*, %struct.cgroup_iter*) #1

declare dso_local i32 @delayacct_is_task_waiting_on_io(%struct.task_struct*) #1

declare dso_local i32 @cgroup_iter_end(%struct.cgroup*, %struct.cgroup_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
