; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_isolate_pages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_isolate_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_cgroup_zone = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.lruvec = type { i32* }

@LRU_BASE = common dso_local global i32 0, align 4
@LRU_ACTIVE = common dso_local global i64 0, align 8
@LRU_FILE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, %struct.mem_cgroup_zone*, %struct.list_head*, i64*, i32, i32, i32, i32)* @isolate_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isolate_pages(i64 %0, %struct.mem_cgroup_zone* %1, %struct.list_head* %2, i64* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.mem_cgroup_zone*, align 8
  %11 = alloca %struct.list_head*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.lruvec*, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store %struct.mem_cgroup_zone* %1, %struct.mem_cgroup_zone** %10, align 8
  store %struct.list_head* %2, %struct.list_head** %11, align 8
  store i64* %3, i64** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load i32, i32* @LRU_BASE, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %10, align 8
  %21 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mem_cgroup_zone*, %struct.mem_cgroup_zone** %10, align 8
  %24 = getelementptr inbounds %struct.mem_cgroup_zone, %struct.mem_cgroup_zone* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.lruvec* @mem_cgroup_zone_lruvec(i32 %22, i32 %25)
  store %struct.lruvec* %26, %struct.lruvec** %17, align 8
  %27 = load i32, i32* %15, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %8
  %30 = load i64, i64* @LRU_ACTIVE, align 8
  %31 = load i32, i32* %18, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %18, align 4
  br label %35

35:                                               ; preds = %29, %8
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %35
  %39 = load i64, i64* @LRU_FILE, align 8
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %18, align 4
  br label %44

44:                                               ; preds = %38, %35
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.lruvec*, %struct.lruvec** %17, align 8
  %47 = getelementptr inbounds %struct.lruvec, %struct.lruvec* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load %struct.list_head*, %struct.list_head** %11, align 8
  %53 = load i64*, i64** %12, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %16, align 4
  %57 = call i64 @isolate_lru_pages(i64 %45, i32* %51, %struct.list_head* %52, i64* %53, i32 %54, i32 %55, i32 %56)
  ret i64 %57
}

declare dso_local %struct.lruvec* @mem_cgroup_zone_lruvec(i32, i32) #1

declare dso_local i64 @isolate_lru_pages(i64, i32*, %struct.list_head*, i64*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
