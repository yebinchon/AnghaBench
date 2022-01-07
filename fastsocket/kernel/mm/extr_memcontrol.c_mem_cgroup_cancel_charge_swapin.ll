; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_cancel_charge_swapin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_cancel_charge_swapin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_cancel_charge_swapin(%struct.mem_cgroup* %0) #0 {
  %2 = alloca %struct.mem_cgroup*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %2, align 8
  %3 = call i64 (...) @mem_cgroup_disabled()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %14

6:                                                ; preds = %1
  %7 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %8 = icmp ne %struct.mem_cgroup* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  br label %14

10:                                               ; preds = %6
  %11 = load %struct.mem_cgroup*, %struct.mem_cgroup** %2, align 8
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = call i32 @mem_cgroup_cancel_charge(%struct.mem_cgroup* %11, i32 %12, i32 1)
  br label %14

14:                                               ; preds = %10, %9, %5
  ret void
}

declare dso_local i64 @mem_cgroup_disabled(...) #1

declare dso_local i32 @mem_cgroup_cancel_charge(%struct.mem_cgroup*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
