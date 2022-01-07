; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.mem_cgroup = type { i32, i32 }

@_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, i32)* @mem_cgroup_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_reset(%struct.cgroup* %0, i32 %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %9 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %8)
  store %struct.mem_cgroup* %9, %struct.mem_cgroup** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @MEMFILE_TYPE(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @MEMFILE_ATTR(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %41 [
    i32 128, label %15
    i32 129, label %28
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @_MEM, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %21 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %20, i32 0, i32 1
  %22 = call i32 @res_counter_reset_max(i32* %21)
  br label %27

23:                                               ; preds = %15
  %24 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %25 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %24, i32 0, i32 0
  %26 = call i32 @res_counter_reset_max(i32* %25)
  br label %27

27:                                               ; preds = %23, %19
  br label %41

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @_MEM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %34 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %33, i32 0, i32 1
  %35 = call i32 @res_counter_reset_failcnt(i32* %34)
  br label %40

36:                                               ; preds = %28
  %37 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %38 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %37, i32 0, i32 0
  %39 = call i32 @res_counter_reset_failcnt(i32* %38)
  br label %40

40:                                               ; preds = %36, %32
  br label %41

41:                                               ; preds = %2, %40, %27
  ret i32 0
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup*) #1

declare dso_local i32 @MEMFILE_TYPE(i32) #1

declare dso_local i32 @MEMFILE_ATTR(i32) #1

declare dso_local i32 @res_counter_reset_max(i32*) #1

declare dso_local i32 @res_counter_reset_failcnt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
