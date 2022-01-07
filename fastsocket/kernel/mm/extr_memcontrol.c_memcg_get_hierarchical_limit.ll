; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_memcg_get_hierarchical_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_memcg_get_hierarchical_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.cgroup* }
%struct.cgroup = type { %struct.cgroup* }

@RES_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_cgroup*, i64*, i64*)* @memcg_get_hierarchical_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memcg_get_hierarchical_limit(%struct.mem_cgroup* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.mem_cgroup*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.cgroup*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %11 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %12 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %11, i32 0, i32 1
  %13 = load i32, i32* @RES_LIMIT, align 4
  %14 = call i64 @res_counter_read_u64(i32* %12, i32 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %16 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %15, i32 0, i32 0
  %17 = load i32, i32* @RES_LIMIT, align 4
  %18 = call i64 @res_counter_read_u64(i32* %16, i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %20 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.cgroup*, %struct.cgroup** %21, align 8
  store %struct.cgroup* %22, %struct.cgroup** %7, align 8
  %23 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %24 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %61

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %45, %28
  %30 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %31 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %30, i32 0, i32 0
  %32 = load %struct.cgroup*, %struct.cgroup** %31, align 8
  %33 = icmp ne %struct.cgroup* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %29
  %35 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %36 = getelementptr inbounds %struct.cgroup, %struct.cgroup* %35, i32 0, i32 0
  %37 = load %struct.cgroup*, %struct.cgroup** %36, align 8
  store %struct.cgroup* %37, %struct.cgroup** %7, align 8
  %38 = load %struct.cgroup*, %struct.cgroup** %7, align 8
  %39 = call %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup* %38)
  store %struct.mem_cgroup* %39, %struct.mem_cgroup** %4, align 8
  %40 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %41 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %34
  br label %60

45:                                               ; preds = %34
  %46 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %47 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %46, i32 0, i32 1
  %48 = load i32, i32* @RES_LIMIT, align 4
  %49 = call i64 @res_counter_read_u64(i32* %47, i32 %48)
  store i64 %49, i64* %10, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i64 @min(i64 %50, i64 %51)
  store i64 %52, i64* %8, align 8
  %53 = load %struct.mem_cgroup*, %struct.mem_cgroup** %4, align 8
  %54 = getelementptr inbounds %struct.mem_cgroup, %struct.mem_cgroup* %53, i32 0, i32 0
  %55 = load i32, i32* @RES_LIMIT, align 4
  %56 = call i64 @res_counter_read_u64(i32* %54, i32 %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = call i64 @min(i64 %57, i64 %58)
  store i64 %59, i64* %9, align 8
  br label %29

60:                                               ; preds = %44, %29
  br label %61

61:                                               ; preds = %60, %27
  %62 = load i64, i64* %8, align 8
  %63 = load i64*, i64** %5, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64*, i64** %6, align 8
  store i64 %64, i64* %65, align 8
  ret void
}

declare dso_local i64 @res_counter_read_u64(i32*, i32) #1

declare dso_local %struct.mem_cgroup* @mem_cgroup_from_cont(%struct.cgroup*) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
