; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_iter_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_iter_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }

@root_mem_cgroup = common dso_local global %struct.mem_cgroup* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mem_cgroup_iter_break(%struct.mem_cgroup* %0, %struct.mem_cgroup* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.mem_cgroup*, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store %struct.mem_cgroup* %1, %struct.mem_cgroup** %4, align 8
  %5 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %6 = icmp ne %struct.mem_cgroup* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = load %struct.mem_cgroup*, %struct.mem_cgroup** @root_mem_cgroup, align 8
  store %struct.mem_cgroup* %8, %struct.mem_cgroup** %3, align 8
  br label %9

9:                                                ; preds = %7, %2
  %10 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %11 = icmp ne %struct.mem_cgroup* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %14 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %15 = icmp ne %struct.mem_cgroup* %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %18 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %17, i32 0, i32 0
  %19 = call i32 @css_put(i32* %18)
  br label %20

20:                                               ; preds = %16, %12, %9
  ret void
}

declare dso_local i32 @css_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
