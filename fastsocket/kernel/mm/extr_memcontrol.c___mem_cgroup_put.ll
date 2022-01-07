; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c___mem_cgroup_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c___mem_cgroup_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, i32)* @__mem_cgroup_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mem_cgroup_put(%struct.mem_cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_cgroup*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %8 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %7, i32 0, i32 0
  %9 = call i64 @atomic_sub_and_test(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %13 = call %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %12)
  store %struct.mem_cgroup* %13, %struct.mem_cgroup** %5, align 8
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %15 = call i32 @__mem_cgroup_free(%struct.mem_cgroup* %14)
  %16 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %17 = icmp ne %struct.mem_cgroup* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %20 = call i32 @mem_cgroup_put(%struct.mem_cgroup* %19)
  br label %21

21:                                               ; preds = %18, %11
  br label %22

22:                                               ; preds = %21, %2
  ret void
}

declare dso_local i64 @atomic_sub_and_test(i32, i32*) #1

declare dso_local %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup*) #1

declare dso_local i32 @__mem_cgroup_free(%struct.mem_cgroup*) #1

declare dso_local i32 @mem_cgroup_put(%struct.mem_cgroup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
