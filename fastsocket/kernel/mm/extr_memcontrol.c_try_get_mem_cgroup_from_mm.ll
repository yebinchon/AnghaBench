; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_try_get_mem_cgroup_from_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_try_get_mem_cgroup_from_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.mm_struct = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_cgroup* (%struct.mm_struct*)* @try_get_mem_cgroup_from_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_cgroup* @try_get_mem_cgroup_from_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.mem_cgroup*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %3, align 8
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %4, align 8
  %5 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %6 = icmp ne %struct.mm_struct* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %2, align 8
  br label %33

8:                                                ; preds = %1
  %9 = call i32 (...) @rcu_read_lock()
  br label %10

10:                                               ; preds = %24, %8
  %11 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rcu_dereference(i32 %13)
  %15 = call %struct.mem_cgroup* @mem_cgroup_from_task(i32 %14)
  store %struct.mem_cgroup* %15, %struct.mem_cgroup** %4, align 8
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %17 = icmp ne %struct.mem_cgroup* %16, null
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %30

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %26 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %25, i32 0, i32 0
  %27 = call i32 @css_tryget(i32* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %10, label %30

30:                                               ; preds = %24, %22
  %31 = call i32 (...) @rcu_read_unlock()
  %32 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  store %struct.mem_cgroup* %32, %struct.mem_cgroup** %2, align 8
  br label %33

33:                                               ; preds = %30, %7
  %34 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  ret %struct.mem_cgroup* %34
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_task(i32) #1

declare dso_local i32 @rcu_dereference(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @css_tryget(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
