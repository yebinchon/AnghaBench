; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_read_u64.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_cpuset_read_u64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.cpuset = type { i32 }

@cpuset_memory_pressure_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*)* @cpuset_read_u64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpuset_read_u64(%struct.cgroup* %0, %struct.cftype* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca %struct.cpuset*, align 8
  %7 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  %8 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %9 = call %struct.cpuset* @cgroup_cs(%struct.cgroup* %8)
  store %struct.cpuset* %9, %struct.cpuset** %6, align 8
  %10 = load %struct.cftype*, %struct.cftype** %5, align 8
  %11 = getelementptr inbounds %struct.cftype, %struct.cftype* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  switch i32 %13, label %41 [
    i32 136, label %14
    i32 132, label %17
    i32 131, label %20
    i32 130, label %23
    i32 135, label %26
    i32 133, label %29
    i32 134, label %31
    i32 129, label %35
    i32 128, label %38
  ]

14:                                               ; preds = %2
  %15 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %16 = call i32 @is_cpu_exclusive(%struct.cpuset* %15)
  store i32 %16, i32* %3, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %19 = call i32 @is_mem_exclusive(%struct.cpuset* %18)
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %22 = call i32 @is_mem_hardwall(%struct.cpuset* %21)
  store i32 %22, i32* %3, align 4
  br label %44

23:                                               ; preds = %2
  %24 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %25 = call i32 @is_sched_load_balance(%struct.cpuset* %24)
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %2
  %27 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %28 = call i32 @is_memory_migrate(%struct.cpuset* %27)
  store i32 %28, i32* %3, align 4
  br label %44

29:                                               ; preds = %2
  %30 = load i32, i32* @cpuset_memory_pressure_enabled, align 4
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %2
  %32 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %33 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %32, i32 0, i32 0
  %34 = call i32 @fmeter_getrate(i32* %33)
  store i32 %34, i32* %3, align 4
  br label %44

35:                                               ; preds = %2
  %36 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %37 = call i32 @is_spread_page(%struct.cpuset* %36)
  store i32 %37, i32* %3, align 4
  br label %44

38:                                               ; preds = %2
  %39 = load %struct.cpuset*, %struct.cpuset** %6, align 8
  %40 = call i32 @is_spread_slab(%struct.cpuset* %39)
  store i32 %40, i32* %3, align 4
  br label %44

41:                                               ; preds = %2
  %42 = call i32 (...) @BUG()
  br label %43

43:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %38, %35, %31, %29, %26, %23, %20, %17, %14
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.cpuset* @cgroup_cs(%struct.cgroup*) #1

declare dso_local i32 @is_cpu_exclusive(%struct.cpuset*) #1

declare dso_local i32 @is_mem_exclusive(%struct.cpuset*) #1

declare dso_local i32 @is_mem_hardwall(%struct.cpuset*) #1

declare dso_local i32 @is_sched_load_balance(%struct.cpuset*) #1

declare dso_local i32 @is_memory_migrate(%struct.cpuset*) #1

declare dso_local i32 @fmeter_getrate(i32*) #1

declare dso_local i32 @is_spread_page(%struct.cpuset*) #1

declare dso_local i32 @is_spread_slab(%struct.cpuset*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
