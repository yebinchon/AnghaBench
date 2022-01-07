; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_parent_mem_cgroup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_parent_mem_cgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@res = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_cgroup* (%struct.mem_cgroup*)* @parent_mem_cgroup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_cgroup* @parent_mem_cgroup(%struct.mem_cgroup* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  %3 = alloca %struct.mem_cgroup*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  %4 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %5 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %2, align 8
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %12 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @res, align 4
  %16 = call %struct.mem_cgroup* @mem_cgroup_from_res_counter(i32 %14, i32 %15)
  store %struct.mem_cgroup* %16, %struct.mem_cgroup** %2, align 8
  br label %17

17:                                               ; preds = %10, %9
  %18 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  ret %struct.mem_cgroup* %18
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_res_counter(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
