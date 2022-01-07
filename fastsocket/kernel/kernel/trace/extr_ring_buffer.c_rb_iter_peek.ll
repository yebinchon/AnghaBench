; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_iter_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_iter_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32, i64 }
%struct.ring_buffer_iter = type { i64, %struct.ring_buffer_per_cpu* }
%struct.ring_buffer_per_cpu = type { i32, %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }

@RB_TIMESTAMPS_PER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_buffer_event* (%struct.ring_buffer_iter*, i64*)* @rb_iter_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_buffer_event* @rb_iter_peek(%struct.ring_buffer_iter* %0, i64* %1) #0 {
  %3 = alloca %struct.ring_buffer_event*, align 8
  %4 = alloca %struct.ring_buffer_iter*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.ring_buffer*, align 8
  %7 = alloca %struct.ring_buffer_per_cpu*, align 8
  %8 = alloca %struct.ring_buffer_event*, align 8
  %9 = alloca i32, align 4
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %11 = call i64 @ring_buffer_iter_empty(%struct.ring_buffer_iter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %82

14:                                               ; preds = %2
  %15 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %16 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %15, i32 0, i32 1
  %17 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %16, align 8
  store %struct.ring_buffer_per_cpu* %17, %struct.ring_buffer_per_cpu** %7, align 8
  %18 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %19 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %18, i32 0, i32 1
  %20 = load %struct.ring_buffer*, %struct.ring_buffer** %19, align 8
  store %struct.ring_buffer* %20, %struct.ring_buffer** %6, align 8
  br label %21

21:                                               ; preds = %56, %53, %46, %14
  %22 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* @RB_TIMESTAMPS_PER_PAGE, align 4
  %26 = icmp sgt i32 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %22, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %82

31:                                               ; preds = %21
  %32 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %33 = call i64 @rb_per_cpu_empty(%struct.ring_buffer_per_cpu* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %82

36:                                               ; preds = %31
  %37 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %38 = call %struct.ring_buffer_event* @rb_iter_head_event(%struct.ring_buffer_iter* %37)
  store %struct.ring_buffer_event* %38, %struct.ring_buffer_event** %8, align 8
  %39 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %40 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %79 [
    i32 130, label %42
    i32 129, label %53
    i32 128, label %56
    i32 131, label %59
  ]

42:                                               ; preds = %36
  %43 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %44 = call i32 @rb_null_event(%struct.ring_buffer_event* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %48 = call i32 @rb_inc_iter(%struct.ring_buffer_iter* %47)
  br label %21

49:                                               ; preds = %42
  %50 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %51 = call i32 @rb_advance_iter(%struct.ring_buffer_iter* %50)
  %52 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  store %struct.ring_buffer_event* %52, %struct.ring_buffer_event** %3, align 8
  br label %82

53:                                               ; preds = %36
  %54 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %55 = call i32 @rb_advance_iter(%struct.ring_buffer_iter* %54)
  br label %21

56:                                               ; preds = %36
  %57 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %58 = call i32 @rb_advance_iter(%struct.ring_buffer_iter* %57)
  br label %21

59:                                               ; preds = %36
  %60 = load i64*, i64** %5, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %4, align 8
  %64 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  %67 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %65, %68
  %70 = load i64*, i64** %5, align 8
  store i64 %69, i64* %70, align 8
  %71 = load %struct.ring_buffer*, %struct.ring_buffer** %6, align 8
  %72 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %7, align 8
  %73 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64*, i64** %5, align 8
  %76 = call i32 @ring_buffer_normalize_time_stamp(%struct.ring_buffer* %71, i32 %74, i64* %75)
  br label %77

77:                                               ; preds = %62, %59
  %78 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %8, align 8
  store %struct.ring_buffer_event* %78, %struct.ring_buffer_event** %3, align 8
  br label %82

79:                                               ; preds = %36
  %80 = call i32 (...) @BUG()
  br label %81

81:                                               ; preds = %79
  store %struct.ring_buffer_event* null, %struct.ring_buffer_event** %3, align 8
  br label %82

82:                                               ; preds = %81, %77, %49, %35, %30, %13
  %83 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  ret %struct.ring_buffer_event* %83
}

declare dso_local i64 @ring_buffer_iter_empty(%struct.ring_buffer_iter*) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i64 @rb_per_cpu_empty(%struct.ring_buffer_per_cpu*) #1

declare dso_local %struct.ring_buffer_event* @rb_iter_head_event(%struct.ring_buffer_iter*) #1

declare dso_local i32 @rb_null_event(%struct.ring_buffer_event*) #1

declare dso_local i32 @rb_inc_iter(%struct.ring_buffer_iter*) #1

declare dso_local i32 @rb_advance_iter(%struct.ring_buffer_iter*) #1

declare dso_local i32 @ring_buffer_normalize_time_stamp(%struct.ring_buffer*, i32, i64*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
