; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__set_kernel_mmap_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__set_kernel_mmap_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64, i64 }
%union.perf_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@MAP__NR_TYPES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.machine*, %union.perf_event*)* @machine__set_kernel_mmap_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @machine__set_kernel_mmap_len(%struct.machine* %0, %union.perf_event* %1) #0 {
  %3 = alloca %struct.machine*, align 8
  %4 = alloca %union.perf_event*, align 8
  %5 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %3, align 8
  store %union.perf_event* %1, %union.perf_event** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %60, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @MAP__NR_TYPES, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %63

10:                                               ; preds = %6
  %11 = load %union.perf_event*, %union.perf_event** %4, align 8
  %12 = bitcast %union.perf_event* %11 to %struct.TYPE_3__*
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.machine*, %struct.machine** %3, align 8
  %16 = getelementptr inbounds %struct.machine, %struct.machine* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %17, i64 %19
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i64 %14, i64* %22, align 8
  %23 = load %union.perf_event*, %union.perf_event** %4, align 8
  %24 = bitcast %union.perf_event* %23 to %struct.TYPE_3__*
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %union.perf_event*, %union.perf_event** %4, align 8
  %28 = bitcast %union.perf_event* %27 to %struct.TYPE_3__*
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %26, %30
  %32 = load %struct.machine*, %struct.machine** %3, align 8
  %33 = getelementptr inbounds %struct.machine, %struct.machine* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %34, i64 %36
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i64 %31, i64* %39, align 8
  %40 = load %struct.machine*, %struct.machine** %3, align 8
  %41 = getelementptr inbounds %struct.machine, %struct.machine* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %10
  %51 = load %struct.machine*, %struct.machine** %3, align 8
  %52 = getelementptr inbounds %struct.machine, %struct.machine* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %53, i64 %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i64 -1, i64* %58, align 8
  br label %59

59:                                               ; preds = %50, %10
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %6

63:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
