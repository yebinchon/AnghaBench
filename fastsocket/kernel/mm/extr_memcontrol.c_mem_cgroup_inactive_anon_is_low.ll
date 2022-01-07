; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_inactive_anon_is_low.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_memcontrol.c_mem_cgroup_inactive_anon_is_low.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup = type { i32 }
%struct.zone = type { i32 }

@LRU_INACTIVE_ANON = common dso_local global i32 0, align 4
@LRU_ACTIVE_ANON = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mem_cgroup_inactive_anon_is_low(%struct.mem_cgroup* %0, %struct.zone* %1) #0 {
  %3 = alloca %struct.mem_cgroup*, align 8
  %4 = alloca %struct.zone*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.mem_cgroup* %0, %struct.mem_cgroup** %3, align 8
  store %struct.zone* %1, %struct.zone** %4, align 8
  %9 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %10 = load %struct.zone*, %struct.zone** %4, align 8
  %11 = load i32, i32* @LRU_INACTIVE_ANON, align 4
  %12 = call i64 @mem_cgroup_zone_nr_pages(%struct.mem_cgroup* %9, %struct.zone* %10, i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.mem_cgroup*, %struct.mem_cgroup** %3, align 8
  %14 = load %struct.zone*, %struct.zone** %4, align 8
  %15 = load i32, i32* @LRU_ACTIVE_ANON, align 4
  %16 = call i64 @mem_cgroup_zone_nr_pages(%struct.mem_cgroup* %13, %struct.zone* %14, i32 %15)
  store i64 %16, i64* %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = add i64 %17, %18
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = sub nsw i32 30, %20
  %22 = zext i32 %21 to i64
  %23 = lshr i64 %19, %22
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load i64, i64* %8, align 8
  %28 = mul i64 10, %27
  %29 = trunc i64 %28 to i32
  %30 = call i64 @int_sqrt(i32 %29)
  store i64 %30, i64* %5, align 8
  br label %32

31:                                               ; preds = %2
  store i64 1, i64* %5, align 8
  br label %32

32:                                               ; preds = %31, %26
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = mul i64 %33, %34
  %36 = load i64, i64* %7, align 8
  %37 = icmp ult i64 %35, %36
  %38 = zext i1 %37 to i32
  ret i32 %38
}

declare dso_local i64 @mem_cgroup_zone_nr_pages(%struct.mem_cgroup*, %struct.zone*, i32) #1

declare dso_local i64 @int_sqrt(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
