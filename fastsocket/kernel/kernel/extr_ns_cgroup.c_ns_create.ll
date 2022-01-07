; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ns_cgroup.c_ns_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_ns_cgroup.c_ns_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { i32 }
%struct.ns_cgroup = type { %struct.cgroup_subsys_state }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys*, %struct.cgroup*)* @ns_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @ns_create(%struct.cgroup_subsys* %0, %struct.cgroup* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.ns_cgroup*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %4, align 8
  store %struct.cgroup* %1, %struct.cgroup** %5, align 8
  %7 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %8 = call i32 @capable(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EPERM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %12)
  store %struct.cgroup_subsys_state* %13, %struct.cgroup_subsys_state** %3, align 8
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %16 = load i32, i32* @current, align 4
  %17 = call i32 @cgroup_is_descendant(%struct.cgroup* %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %21)
  store %struct.cgroup_subsys_state* %22, %struct.cgroup_subsys_state** %3, align 8
  br label %35

23:                                               ; preds = %14
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.ns_cgroup* @kzalloc(i32 4, i32 %24)
  store %struct.ns_cgroup* %25, %struct.ns_cgroup** %6, align 8
  %26 = load %struct.ns_cgroup*, %struct.ns_cgroup** %6, align 8
  %27 = icmp ne %struct.ns_cgroup* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %30)
  store %struct.cgroup_subsys_state* %31, %struct.cgroup_subsys_state** %3, align 8
  br label %35

32:                                               ; preds = %23
  %33 = load %struct.ns_cgroup*, %struct.ns_cgroup** %6, align 8
  %34 = getelementptr inbounds %struct.ns_cgroup, %struct.ns_cgroup* %33, i32 0, i32 0
  store %struct.cgroup_subsys_state* %34, %struct.cgroup_subsys_state** %3, align 8
  br label %35

35:                                               ; preds = %32, %28, %19, %10
  %36 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %36
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i32 @cgroup_is_descendant(%struct.cgroup*, i32) #1

declare dso_local %struct.ns_cgroup* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
