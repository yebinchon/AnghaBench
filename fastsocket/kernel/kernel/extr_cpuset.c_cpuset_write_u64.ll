; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_write_u64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_write_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.cpuset = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@CS_CPU_EXCLUSIVE = common dso_local global i32 0, align 4
@CS_MEM_EXCLUSIVE = common dso_local global i32 0, align 4
@CS_MEM_HARDWALL = common dso_local global i32 0, align 4
@CS_SCHED_LOAD_BALANCE = common dso_local global i32 0, align 4
@CS_MEMORY_MIGRATE = common dso_local global i32 0, align 4
@cpuset_memory_pressure_enabled = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@CS_SPREAD_PAGE = common dso_local global i32 0, align 4
@CS_SPREAD_SLAB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i32)* @cpuset_write_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_write_u64(%struct.cgroup* %0, %struct.cftype* %1, i32 %2) #0 {
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
  br label %74

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  switch i32 %23, label %68 [
    i32 136, label %24
    i32 132, label %29
    i32 131, label %34
    i32 130, label %39
    i32 135, label %44
    i32 133, label %49
    i32 134, label %55
    i32 129, label %58
    i32 128, label %63
  ]

24:                                               ; preds = %22
  %25 = load i32, i32* @CS_CPU_EXCLUSIVE, align 4
  %26 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @update_flag(i32 %25, %struct.cpuset* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  br label %71

29:                                               ; preds = %22
  %30 = load i32, i32* @CS_MEM_EXCLUSIVE, align 4
  %31 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @update_flag(i32 %30, %struct.cpuset* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  br label %71

34:                                               ; preds = %22
  %35 = load i32, i32* @CS_MEM_HARDWALL, align 4
  %36 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @update_flag(i32 %35, %struct.cpuset* %36, i32 %37)
  store i32 %38, i32* %8, align 4
  br label %71

39:                                               ; preds = %22
  %40 = load i32, i32* @CS_SCHED_LOAD_BALANCE, align 4
  %41 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @update_flag(i32 %40, %struct.cpuset* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  br label %71

44:                                               ; preds = %22
  %45 = load i32, i32* @CS_MEMORY_MIGRATE, align 4
  %46 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @update_flag(i32 %45, %struct.cpuset* %46, i32 %47)
  store i32 %48, i32* %8, align 4
  br label %71

49:                                               ; preds = %22
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  store i32 %54, i32* @cpuset_memory_pressure_enabled, align 4
  br label %71

55:                                               ; preds = %22
  %56 = load i32, i32* @EACCES, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %71

58:                                               ; preds = %22
  %59 = load i32, i32* @CS_SPREAD_PAGE, align 4
  %60 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @update_flag(i32 %59, %struct.cpuset* %60, i32 %61)
  store i32 %62, i32* %8, align 4
  br label %71

63:                                               ; preds = %22
  %64 = load i32, i32* @CS_SPREAD_SLAB, align 4
  %65 = load %struct.cpuset*, %struct.cpuset** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @update_flag(i32 %64, %struct.cpuset* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  br label %71

68:                                               ; preds = %22
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %63, %58, %55, %49, %44, %39, %34, %29, %24
  %72 = call i32 (...) @cgroup_unlock()
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %71, %19
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local %struct.cpuset* @cgroup_cs(%struct.cgroup*) #1

declare dso_local i32 @cgroup_lock_live_group(%struct.cgroup*) #1

declare dso_local i32 @update_flag(i32, %struct.cpuset*, i32) #1

declare dso_local i32 @cgroup_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
