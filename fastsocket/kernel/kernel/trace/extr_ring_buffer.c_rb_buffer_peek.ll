; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_buffer_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_buffer_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32, i64 }
%struct.ring_buffer_per_cpu = type { i32, i32, i64 }
%struct.buffer_page = type { i32 }

@RB_TIMESTAMPS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_buffer_event* (%struct.ring_buffer_per_cpu*, i64*)* @rb_buffer_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_buffer_event* @rb_buffer_peek(%struct.ring_buffer_per_cpu* %0, i64* %1) #0 {
  %3 = alloca %struct.ring_buffer_event*, align 8
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ring_buffer_event*, align 8
  %7 = alloca %struct.buffer_page*, align 8
  %8 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %43, %40, %2
  %10 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %11 = load i32, i32* %8, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @RB_TIMESTAMPS_PER_PAGE, align 4
  %14 = icmp sgt i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %10, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %71

19:                                               ; preds = %9
  %20 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %21 = call %struct.buffer_page* @rb_get_reader_page(%struct.ring_buffer_per_cpu* %20)
  store %struct.buffer_page* %21, %struct.buffer_page** %7, align 8
  %22 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %23 = icmp ne %struct.buffer_page* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %71

25:                                               ; preds = %19
  %26 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %27 = call %struct.ring_buffer_event* @rb_reader_event(%struct.ring_buffer_per_cpu* %26)
  store %struct.ring_buffer_event* %27, %struct.ring_buffer_event** %6, align 8
  %28 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %29 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %68 [
    i32 130, label %31
    i32 129, label %40
    i32 128, label %43
    i32 131, label %46
  ]

31:                                               ; preds = %25
  %32 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %33 = call i32 @rb_null_event(%struct.ring_buffer_event* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %37 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %36, i32 1)
  br label %38

38:                                               ; preds = %35, %31
  %39 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  store %struct.ring_buffer_event* %39, %struct.ring_buffer_event** %3, align 8
  br label %71

40:                                               ; preds = %25
  %41 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %42 = call i32 @rb_advance_reader(%struct.ring_buffer_per_cpu* %41)
  br label %9

43:                                               ; preds = %25
  %44 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %45 = call i32 @rb_advance_reader(%struct.ring_buffer_per_cpu* %44)
  br label %9

46:                                               ; preds = %25
  %47 = load i64*, i64** %5, align 8
  %48 = icmp ne i64* %47, null
  br i1 %48, label %49, label %66

49:                                               ; preds = %46
  %50 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %51 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  %54 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  %58 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %59 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %62 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64*, i64** %5, align 8
  %65 = call i32 @ring_buffer_normalize_time_stamp(i32 %60, i32 %63, i64* %64)
  br label %66

66:                                               ; preds = %49, %46
  %67 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %6, align 8
  store %struct.ring_buffer_event* %67, %struct.ring_buffer_event** %3, align 8
  br label %71

68:                                               ; preds = %25
  %69 = call i32 (...) @BUG()
  br label %70

70:                                               ; preds = %68
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %71

71:                                               ; preds = %70, %66, %38, %24, %18
  %72 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  ret %struct.ring_buffer_event* %72
}

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local %struct.buffer_page* @rb_get_reader_page(%struct.ring_buffer_per_cpu*) #1

declare dso_local %struct.ring_buffer_event* @rb_reader_event(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @rb_null_event(%struct.ring_buffer_event*) #1

declare dso_local i32 @rb_advance_reader(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @ring_buffer_normalize_time_stamp(i32, i32, i64*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
