; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_ring_buffer_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer = type { %struct.ring_buffer_per_cpu**, i32, i32 }
%struct.ring_buffer_per_cpu = type { i32 }
%struct.ring_buffer_event = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ring_buffer_flags = common dso_local global i64 0, align 8
@RB_BUFFERS_ON = common dso_local global i64 0, align 8
@BUF_MAX_DATA_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_write(%struct.ring_buffer* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ring_buffer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ring_buffer_per_cpu*, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ring_buffer* %0, %struct.ring_buffer** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %11, align 4
  %16 = load i64, i64* @ring_buffer_flags, align 8
  %17 = load i64, i64* @RB_BUFFERS_ON, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %78

22:                                               ; preds = %3
  %23 = call i32 (...) @ftrace_preempt_disable()
  store i32 %23, i32* %13, align 4
  %24 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %24, i32 0, i32 2
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %74

29:                                               ; preds = %22
  %30 = call i32 (...) @raw_smp_processor_id()
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cpumask_test_cpu(i32 %31, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %74

38:                                               ; preds = %29
  %39 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.ring_buffer, %struct.ring_buffer* %39, i32 0, i32 0
  %41 = load %struct.ring_buffer_per_cpu**, %struct.ring_buffer_per_cpu*** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %41, i64 %43
  %45 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %44, align 8
  store %struct.ring_buffer_per_cpu* %45, %struct.ring_buffer_per_cpu** %8, align 8
  %46 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %47 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %46, i32 0, i32 0
  %48 = call i64 @atomic_read(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %74

51:                                               ; preds = %38
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @BUF_MAX_DATA_SIZE, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %74

56:                                               ; preds = %51
  %57 = load %struct.ring_buffer*, %struct.ring_buffer** %5, align 8
  %58 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call %struct.ring_buffer_event* @rb_reserve_next_event(%struct.ring_buffer* %57, %struct.ring_buffer_per_cpu* %58, i64 %59)
  store %struct.ring_buffer_event* %60, %struct.ring_buffer_event** %9, align 8
  %61 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %62 = icmp ne %struct.ring_buffer_event* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %74

64:                                               ; preds = %56
  %65 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %66 = call i8* @rb_event_data(%struct.ring_buffer_event* %65)
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @memcpy(i8* %67, i8* %68, i64 %69)
  %71 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  %72 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %73 = call i32 @rb_commit(%struct.ring_buffer_per_cpu* %71, %struct.ring_buffer_event* %72)
  store i32 0, i32* %11, align 4
  br label %74

74:                                               ; preds = %64, %63, %55, %50, %37, %28
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @ftrace_preempt_enable(i32 %75)
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %19
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @ftrace_preempt_disable(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local %struct.ring_buffer_event* @rb_reserve_next_event(%struct.ring_buffer*, %struct.ring_buffer_per_cpu*, i64) #1

declare dso_local i8* @rb_event_data(%struct.ring_buffer_event*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @rb_commit(%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*) #1

declare dso_local i32 @ftrace_preempt_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
