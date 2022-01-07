; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_access_dso_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_unwind.c_access_dso_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unwind_info = type { i32, i32 }
%struct.addr_location = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PERF_RECORD_MISC_USER = common dso_local global i32 0, align 4
@MAP__FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"unwind: no map for %lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unwind_info*, i64, i64*)* @access_dso_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @access_dso_mem(%struct.unwind_info* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.unwind_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.addr_location, align 8
  %9 = alloca i32, align 4
  store %struct.unwind_info* %0, %struct.unwind_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %11 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %14 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PERF_RECORD_MISC_USER, align 4
  %17 = load i32, i32* @MAP__FUNCTION, align 4
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @thread__find_addr_map(i32 %12, i32 %15, i32 %16, i32 %17, i64 %18, %struct.addr_location* %8)
  %20 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %24)
  store i32 -1, i32* %4, align 4
  br label %52

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %52

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %8, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.unwind_info*, %struct.unwind_info** %5, align 8
  %41 = getelementptr inbounds %struct.unwind_info, %struct.unwind_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = bitcast i64* %44 to i32*
  %46 = call i32 @dso__data_read_addr(i32 %37, %struct.TYPE_2__* %39, i32 %42, i64 %43, i32* %45, i32 8)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp eq i64 %48, 8
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %33, %32, %23
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @thread__find_addr_map(i32, i32, i32, i32, i64, %struct.addr_location*) #1

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @dso__data_read_addr(i32, %struct.TYPE_2__*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
