; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.cgroup_subsys_state }
%struct.cgroup_subsys_state = type { i32 }
%struct.cgroup_subsys = type { i32 }
%struct.cgroup = type { i32 }
%struct.cpuset = type { i32, %struct.cgroup_subsys_state, %struct.cpuset*, i32, i32, i32, i64 }

@top_cpuset = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CS_SPREAD_PAGE = common dso_local global i32 0, align 4
@CS_SPREAD_SLAB = common dso_local global i32 0, align 4
@CS_SCHED_LOAD_BALANCE = common dso_local global i32 0, align 4
@number_of_cpusets = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cgroup_subsys_state* (%struct.cgroup_subsys*, %struct.cgroup*)* @cpuset_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cgroup_subsys_state* @cpuset_create(%struct.cgroup_subsys* %0, %struct.cgroup* %1) #0 {
  %3 = alloca %struct.cgroup_subsys_state*, align 8
  %4 = alloca %struct.cgroup_subsys*, align 8
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca %struct.cpuset*, align 8
  store %struct.cgroup_subsys* %0, %struct.cgroup_subsys** %4, align 8
  store %struct.cgroup* %1, %struct.cgroup** %5, align 8
  %8 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %9 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.cgroup_subsys_state* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @top_cpuset, i32 0, i32 0), %struct.cgroup_subsys_state** %3, align 8
  br label %83

13:                                               ; preds = %2
  %14 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %15 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.cpuset* @cgroup_cs(i32 %16)
  store %struct.cpuset* %17, %struct.cpuset** %7, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.cpuset* @kmalloc(i32 40, i32 %18)
  store %struct.cpuset* %19, %struct.cpuset** %6, align 8
  %20 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %21 = icmp ne %struct.cpuset* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %13
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %24)
  store %struct.cgroup_subsys_state* %25, %struct.cgroup_subsys_state** %3, align 8
  br label %83

26:                                               ; preds = %13
  %27 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %28 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %27, i32 0, i32 5
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i32 @alloc_cpumask_var(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %26
  %33 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %34 = call i32 @kfree(%struct.cpuset* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.cgroup_subsys_state* @ERR_PTR(i32 %36)
  store %struct.cgroup_subsys_state* %37, %struct.cgroup_subsys_state** %3, align 8
  br label %83

38:                                               ; preds = %26
  %39 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %40 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %42 = call i64 @is_spread_page(%struct.cpuset* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @CS_SPREAD_PAGE, align 4
  %46 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %47 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %46, i32 0, i32 6
  %48 = call i32 @set_bit(i32 %45, i64* %47)
  br label %49

49:                                               ; preds = %44, %38
  %50 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %51 = call i64 @is_spread_slab(%struct.cpuset* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %49
  %54 = load i32, i32* @CS_SPREAD_SLAB, align 4
  %55 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %56 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %55, i32 0, i32 6
  %57 = call i32 @set_bit(i32 %54, i64* %56)
  br label %58

58:                                               ; preds = %53, %49
  %59 = load i32, i32* @CS_SCHED_LOAD_BALANCE, align 4
  %60 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %61 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %60, i32 0, i32 6
  %62 = call i32 @set_bit(i32 %59, i64* %61)
  %63 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %64 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cpumask_clear(i32 %65)
  %67 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %68 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @nodes_clear(i32 %69)
  %71 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %72 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %71, i32 0, i32 3
  %73 = call i32 @fmeter_init(i32* %72)
  %74 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %75 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %74, i32 0, i32 0
  store i32 -1, i32* %75, align 8
  %76 = load %struct.cpuset*, %struct.cpuset** %7, align 8
  %77 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %78 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %77, i32 0, i32 2
  store %struct.cpuset* %76, %struct.cpuset** %78, align 8
  %79 = load i32, i32* @number_of_cpusets, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* @number_of_cpusets, align 4
  %81 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %82 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %81, i32 0, i32 1
  store %struct.cgroup_subsys_state* %82, %struct.cgroup_subsys_state** %3, align 8
  br label %83

83:                                               ; preds = %58, %32, %22, %12
  %84 = load %struct.cgroup_subsys_state*, %struct.cgroup_subsys_state** %3, align 8
  ret %struct.cgroup_subsys_state* %84
}

declare dso_local %struct.cpuset* @cgroup_cs(i32) #1

declare dso_local %struct.cpuset* @kmalloc(i32, i32) #1

declare dso_local %struct.cgroup_subsys_state* @ERR_PTR(i32) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @kfree(%struct.cpuset*) #1

declare dso_local i64 @is_spread_page(%struct.cpuset*) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i64 @is_spread_slab(%struct.cpuset*) #1

declare dso_local i32 @cpumask_clear(i32) #1

declare dso_local i32 @nodes_clear(i32) #1

declare dso_local i32 @fmeter_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
