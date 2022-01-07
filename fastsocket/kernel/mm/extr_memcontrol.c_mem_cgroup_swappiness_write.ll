; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_swappiness_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_swappiness_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, %struct.cgroup* }
%struct.cftype = type { i32 }
%struct.mem_cgroup = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i32)* @mem_cgroup_swappiness_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_swappiness_write(%struct.cgroup* %0, %struct.cftype* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgroup*, align 8
  %6 = alloca %struct.cftype*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_cgroup*, align 8
  %9 = alloca %struct.mem_cgroup*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %5, align 8
  store %struct.cftype* %1, %struct.cftype** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %11 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %10)
  store %struct.mem_cgroup* %11, %struct.mem_cgroup** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp sgt i32 %12, 100
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %19 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %18, i32 0, i32 1
  %20 = load %struct.cgroup*, %struct.cgroup** %19, align 8
  %21 = icmp eq %struct.cgroup* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %17
  %26 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %27 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %26, i32 0, i32 1
  %28 = load %struct.cgroup*, %struct.cgroup** %27, align 8
  %29 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %28)
  store %struct.mem_cgroup* %29, %struct.mem_cgroup** %9, align 8
  %30 = call i32 (...) @cgroup_lock()
  %31 = load %struct.mem_cgroup*, %struct.mem_cgroup** %9, align 8
  %32 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %25
  %36 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %37 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.cgroup*, %struct.cgroup** %5, align 8
  %42 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %41, i32 0, i32 0
  %43 = call i32 @list_empty(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40, %25
  %46 = call i32 (...) @cgroup_unlock()
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %60

49:                                               ; preds = %40, %35
  %50 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %51 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %50, i32 0, i32 1
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load i32, i32* %7, align 4
  %54 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %55 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %57 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %56, i32 0, i32 1
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = call i32 (...) @cgroup_unlock()
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %49, %45, %22, %14
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup*) #1

declare dso_local i32 @cgroup_lock(...) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @cgroup_unlock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
