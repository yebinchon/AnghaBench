; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_hierarchy_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_hierarchy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgroup = type { i32, %struct.cgroup* }
%struct.cftype = type { i32 }
%struct.mem_cgroup = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cgroup*, %struct.cftype*, i32)* @mem_cgroup_hierarchy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mem_cgroup_hierarchy_write(%struct.cgroup* %0, %struct.cftype* %1, i32 %2) #0 {
  %4 = alloca %struct.cgroup*, align 8
  %5 = alloca %struct.cftype*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_cgroup*, align 8
  %9 = alloca %struct.cgroup*, align 8
  %10 = alloca %struct.mem_cgroup*, align 8
  store %struct.cgroup* %0, %struct.cgroup** %4, align 8
  store %struct.cftype* %1, %struct.cftype** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %12 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %11)
  store %struct.mem_cgroup* %12, %struct.mem_cgroup** %8, align 8
  %13 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %14 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %13, i32 0, i32 1
  %15 = load %struct.cgroup*, %struct.cgroup** %14, align 8
  store %struct.cgroup* %15, %struct.cgroup** %9, align 8
  store %struct.mem_cgroup* null, %struct.mem_cgroup** %10, align 8
  %16 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %17 = icmp ne %struct.cgroup* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load %struct.cgroup*, %struct.cgroup** %9, align 8
  %20 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %19)
  store %struct.mem_cgroup* %20, %struct.mem_cgroup** %10, align 8
  br label %21

21:                                               ; preds = %18, %3
  %22 = call i32 (...) @cgroup_lock()
  %23 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %24 = icmp ne %struct.mem_cgroup* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.mem_cgroup*, %struct.mem_cgroup** %10, align 8
  %27 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %25, %21
  %31 = load i32, i32* %6, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33, %30
  %37 = load %struct.cgroup*, %struct.cgroup** %4, align 8
  %38 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %37, i32 0, i32 0
  %39 = call i64 @list_empty(i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.mem_cgroup*, %struct.mem_cgroup** %8, align 8
  %44 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %45, %41
  br label %52

49:                                               ; preds = %33, %25
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %48
  %53 = call i32 (...) @cgroup_unlock()
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup*) #1

declare dso_local i32 @cgroup_lock(...) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @cgroup_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
