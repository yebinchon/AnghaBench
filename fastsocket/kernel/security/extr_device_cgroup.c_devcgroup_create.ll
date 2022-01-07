; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/security/extr_device_cgroup.c_devcgroup_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/security/extr_device_cgroup.c_devcgroup_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { %struct.cgroup* }
%struct.dev_cgroup = type { %struct.cgroup_subsys_state, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVCG_DEFAULT_ALLOW = common dso_local global i32 0, align 4
@devcgroup_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys*, %struct.cgroup*)* @devcgroup_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @devcgroup_create(%struct.cgroup_subsys* %0, %struct.cgroup* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.dev_cgroup*, align 8
  %7 = alloca %struct.dev_cgroup*, align 8
  %8 = alloca %struct.cgroup*, align 8
  %9 = alloca i32, align 4
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %4, align 8
  store %struct.cgroup* %1, %struct.cgroup** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.dev_cgroup* @kzalloc(i32 12, i32 %10)
  store %struct.dev_cgroup* %11, %struct.dev_cgroup** %6, align 8
  %12 = load %struct.dev_cgroup*, %struct.dev_cgroup** %6, align 8
  %13 = icmp ne %struct.dev_cgroup* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %16)
  store %struct.cgroup_subsys_state* %17, %struct.cgroup_subsys_state** %3, align 8
  br label %57

18:                                               ; preds = %2
  %19 = load %struct.dev_cgroup*, %struct.dev_cgroup** %6, align 8
  %20 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %19, i32 0, i32 2
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %23 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %22, i32 0, i32 0
  %24 = load %struct.cgroup*, %struct.cgroup** %23, align 8
  store %struct.cgroup* %24, %struct.cgroup** %8, align 8
  %25 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %26 = icmp eq %struct.cgroup* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @DEVCG_DEFAULT_ALLOW, align 4
  %29 = load %struct.dev_cgroup*, %struct.dev_cgroup** %6, align 8
  %30 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %54

31:                                               ; preds = %18
  %32 = load %struct.cgroup*, %struct.cgroup** %8, align 8
  %33 = call %struct.dev_cgroup* @cgroup_to_devcgroup(%struct.cgroup* %32)
  store %struct.dev_cgroup* %33, %struct.dev_cgroup** %7, align 8
  %34 = call i32 @mutex_lock(i32* @devcgroup_mutex)
  %35 = load %struct.dev_cgroup*, %struct.dev_cgroup** %6, align 8
  %36 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %35, i32 0, i32 2
  %37 = load %struct.dev_cgroup*, %struct.dev_cgroup** %7, align 8
  %38 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %37, i32 0, i32 2
  %39 = call i32 @dev_exceptions_copy(i32* %36, i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.dev_cgroup*, %struct.dev_cgroup** %7, align 8
  %41 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.dev_cgroup*, %struct.dev_cgroup** %6, align 8
  %44 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = call i32 @mutex_unlock(i32* @devcgroup_mutex)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %31
  %49 = load %struct.dev_cgroup*, %struct.dev_cgroup** %6, align 8
  %50 = call i32 @kfree(%struct.dev_cgroup* %49)
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %51)
  store %struct.cgroup_subsys_state* %52, %struct.cgroup_subsys_state** %3, align 8
  br label %57

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53, %27
  %55 = load %struct.dev_cgroup*, %struct.dev_cgroup** %6, align 8
  %56 = getelementptr inbounds %struct.dev_cgroup, %struct.dev_cgroup* %55, i32 0, i32 0
  store %struct.cgroup_subsys_state* %56, %struct.cgroup_subsys_state** %3, align 8
  br label %57

57:                                               ; preds = %54, %48, %14
  %58 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %58
}

declare dso_local %struct.dev_cgroup* @kzalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.dev_cgroup* @cgroup_to_devcgroup(%struct.cgroup*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_exceptions_copy(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.dev_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
