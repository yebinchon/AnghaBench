; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_output_read_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_output_read_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_output_handle = type { i32 }
%struct.perf_event = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PERF_FORMAT_TOTAL_TIME_ENABLED = common dso_local global i32 0, align 4
@PERF_FORMAT_TOTAL_TIME_RUNNING = common dso_local global i32 0, align 4
@PERF_FORMAT_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_output_handle*, %struct.perf_event*, i32, i32)* @perf_output_read_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_output_read_one(%struct.perf_output_handle* %0, %struct.perf_event* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.perf_output_handle*, align 8
  %6 = alloca %struct.perf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.perf_output_handle* %0, %struct.perf_output_handle** %5, align 8
  store %struct.perf_event* %1, %struct.perf_event** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %13 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %17 = call i32 @perf_event_count(%struct.perf_event* %16)
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %11, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_ENABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %29 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %28, i32 0, i32 1
  %30 = call i32 @atomic64_read(i32* %29)
  %31 = add nsw i32 %27, %30
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %11, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %34
  store i32 %31, i32* %35, align 4
  br label %36

36:                                               ; preds = %26, %4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @PERF_FORMAT_TOTAL_TIME_RUNNING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %44 = getelementptr inbounds %struct.perf_event, %struct.perf_event* %43, i32 0, i32 0
  %45 = call i32 @atomic64_read(i32* %44)
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %49
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PERF_FORMAT_ID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.perf_event*, %struct.perf_event** %6, align 8
  %58 = call i32 @primary_event_id(%struct.perf_event* %57)
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %56, %51
  %64 = load %struct.perf_output_handle*, %struct.perf_output_handle** %5, align 8
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @__output_copy(%struct.perf_output_handle* %64, i32* %65, i32 %69)
  ret void
}

declare dso_local i32 @perf_event_count(%struct.perf_event*) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @primary_event_id(%struct.perf_event*) #1

declare dso_local i32 @__output_copy(%struct.perf_output_handle*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
