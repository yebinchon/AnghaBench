; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_ip__resolve_ams.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_ip__resolve_ams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%struct.thread = type { i32 }
%struct.addr_map_symbol = type { i32, i64, i32, i32 }
%struct.addr_location = type { i32, i64, i32 }

@NCPUMODES = common dso_local global i64 0, align 8
@cpumodes = common dso_local global i32* null, align 8
@MAP__FUNCTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine*, %struct.thread*, %struct.addr_map_symbol*, i32)* @ip__resolve_ams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip__resolve_ams(%struct.machine* %0, %struct.thread* %1, %struct.addr_map_symbol* %2, i32 %3) #0 {
  %5 = alloca %struct.machine*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.addr_map_symbol*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.addr_location, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store %struct.addr_map_symbol* %2, %struct.addr_map_symbol** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = call i32 @memset(%struct.addr_location* %9, i32 0, i32 24)
  store i64 0, i64* %10, align 8
  br label %13

13:                                               ; preds = %33, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* @NCPUMODES, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %13
  %18 = load i32*, i32** @cpumodes, align 8
  %19 = load i64, i64* %10, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = load %struct.machine*, %struct.machine** %5, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @MAP__FUNCTION, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @thread__find_addr_location(%struct.thread* %22, %struct.machine* %23, i32 %24, i32 %25, i32 %26, %struct.addr_location* %9, i32* null)
  %28 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %9, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %37

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %10, align 8
  br label %13

36:                                               ; preds = %13
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %40 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 4
  %41 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %9, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %44 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %48 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = getelementptr inbounds %struct.addr_location, %struct.addr_location* %9, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.addr_map_symbol*, %struct.addr_map_symbol** %7, align 8
  %52 = getelementptr inbounds %struct.addr_map_symbol, %struct.addr_map_symbol* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  ret void
}

declare dso_local i32 @memset(%struct.addr_location*, i32, i32) #1

declare dso_local i32 @thread__find_addr_location(%struct.thread*, %struct.machine*, i32, i32, i32, %struct.addr_location*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
