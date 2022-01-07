; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cgrp_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_cls_cgroup.c_cgrp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { i64 }
%struct.cgroup_cls_state = type { %struct.cgroup_subsys_state, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys*, %struct.cgroup*)* @cgrp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @cgrp_create(%struct.cgroup_subsys* %0, %struct.cgroup* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cgroup_cls_state*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %4, align 8
  store %struct.cgroup* %1, %struct.cgroup** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.cgroup_cls_state* @kzalloc(i32 8, i32 %7)
  store %struct.cgroup_cls_state* %8, %struct.cgroup_cls_state** %6, align 8
  %9 = icmp ne %struct.cgroup_cls_state* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %12)
  store %struct.cgroup_subsys_state* %13, %struct.cgroup_subsys_state** %3, align 8
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %16 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %21 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.TYPE_2__* @cgrp_cls_state(i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cgroup_cls_state*, %struct.cgroup_cls_state** %6, align 8
  %27 = getelementptr inbounds %struct.cgroup_cls_state, %struct.cgroup_cls_state* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %14
  %29 = load %struct.cgroup_cls_state*, %struct.cgroup_cls_state** %6, align 8
  %30 = getelementptr inbounds %struct.cgroup_cls_state, %struct.cgroup_cls_state* %29, i32 0, i32 0
  store %struct.cgroup_subsys_state* %30, %struct.cgroup_subsys_state** %3, align 8
  br label %31

31:                                               ; preds = %28, %10
  %32 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %32
}

declare dso_local %struct.cgroup_cls_state* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local %struct.TYPE_2__* @cgrp_cls_state(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
