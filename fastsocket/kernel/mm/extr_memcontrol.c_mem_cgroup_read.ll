; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32 }
%struct.cftype = type { i32 }
%struct.mem_cgroup = type { i32, i32 }

@RES_USAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*)* @mem_cgroup_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_read(%struct.cgroup* %0, %struct.cftype* %1) #0 {
  %3 = alloca %struct.cgroup*, align 8
  %4 = alloca %struct.cftype*, align 8
  %5 = alloca %struct.mem_cgroup*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cgroup* %0, %struct.cgroup** %3, align 8
  store %struct.cftype* %1, %struct.cftype** %4, align 8
  %9 = load %struct.cgroup*, %struct.cgroup** %3, align 8
  %10 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %9)
  store %struct.mem_cgroup* %10, %struct.mem_cgroup** %5, align 8
  %11 = load %struct.cftype*, %struct.cftype** %4, align 8
  %12 = getelementptr inbounds %struct.cftype, %struct.cftype* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @MEMFILE_TYPE(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.cftype*, %struct.cftype** %4, align 8
  %16 = getelementptr inbounds %struct.cftype, %struct.cftype* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MEMFILE_ATTR(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %46 [
    i32 129, label %20
    i32 128, label %33
  ]

20:                                               ; preds = %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @RES_USAGE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %26 = call i32 @mem_cgroup_usage(%struct.mem_cgroup* %25, i32 0)
  store i32 %26, i32* %6, align 4
  br label %32

27:                                               ; preds = %20
  %28 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %29 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %28, i32 0, i32 1
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @res_counter_read_u64(i32* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %27, %24
  br label %48

33:                                               ; preds = %2
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @RES_USAGE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %39 = call i32 @mem_cgroup_usage(%struct.mem_cgroup* %38, i32 1)
  store i32 %39, i32* %6, align 4
  br label %45

40:                                               ; preds = %33
  %41 = load %struct.mem_cgroup*, %struct.mem_cgroup** %5, align 8
  %42 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %41, i32 0, i32 0
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @res_counter_read_u64(i32* %42, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %37
  br label %48

46:                                               ; preds = %2
  %47 = call i32 (...) @BUG()
  br label %48

48:                                               ; preds = %46, %45, %32
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup*) #1

declare dso_local i32 @MEMFILE_TYPE(i32) #1

declare dso_local i32 @MEMFILE_ATTR(i32) #1

declare dso_local i32 @mem_cgroup_usage(%struct.mem_cgroup*, i32) #1

declare dso_local i32 @res_counter_read_u64(i32*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
