; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ns_cgroup.c_ns_can_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ns_cgroup.c_ns_can_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup_subsys*, %struct.cgroup*, %struct.task_struct*)* @ns_can_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns_can_attach(%struct.cgroup_subsys* %0, %struct.cgroup* %1, %struct.task_struct* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup_subsys*, align 8
  %6 = alloca %struct.cgroup*, align 8
  %7 = alloca %struct.task_struct*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %5, align 8
  store %struct.cgroup* %1, %struct.cgroup** %6, align 8
  store %struct.task_struct* %2, %struct.task_struct** %7, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %9 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %10 = icmp ne %struct.task_struct* %8, %9
  br i1 %10, label %11, label %27

11:                                               ; preds = %3
  %12 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %13 = call i32 @capable(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* @EPERM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %28

18:                                               ; preds = %11
  %19 = load %struct.cgroup*, %struct.cgroup** %6, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %21 = call i32 @cgroup_is_descendant(%struct.cgroup* %19, %struct.task_struct* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %28

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %3
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %23, %15
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @cgroup_is_descendant(%struct.cgroup*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
