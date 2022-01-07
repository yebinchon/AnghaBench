; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_advance_iter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_advance_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_iter = type { i64, i64, %struct.ring_buffer_per_cpu* }
%struct.ring_buffer_per_cpu = type { i64, %struct.ring_buffer* }
%struct.ring_buffer = type { i32 }
%struct.ring_buffer_event = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_iter*)* @rb_advance_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_advance_iter(%struct.ring_buffer_iter* %0) #0 {
  %2 = alloca %struct.ring_buffer_iter*, align 8
  %3 = alloca %struct.ring_buffer*, align 8
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca %struct.ring_buffer_event*, align 8
  %6 = alloca i32, align 4
  store %struct.ring_buffer_iter* %0, %struct.ring_buffer_iter** %2, align 8
  %7 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %8 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %7, i32 0, i32 2
  %9 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %8, align 8
  store %struct.ring_buffer_per_cpu* %9, %struct.ring_buffer_per_cpu** %4, align 8
  %10 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %11 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %10, i32 0, i32 1
  %12 = load %struct.ring_buffer*, %struct.ring_buffer** %11, align 8
  store %struct.ring_buffer* %12, %struct.ring_buffer** %3, align 8
  %13 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %14 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %17 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @rb_page_size(i64 %18)
  %20 = icmp sge i64 %15, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %23 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %26 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  br label %90

30:                                               ; preds = %21
  %31 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %32 = call i32 @rb_inc_iter(%struct.ring_buffer_iter* %31)
  br label %90

33:                                               ; preds = %1
  %34 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %35 = call %struct.ring_buffer_event* @rb_iter_head_event(%struct.ring_buffer_iter* %34)
  store %struct.ring_buffer_event* %35, %struct.ring_buffer_event** %5, align 8
  %36 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %37 = call i32 @rb_event_length(%struct.ring_buffer_event* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %39 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %40 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %43 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %33
  %47 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %48 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = add nsw i64 %49, %51
  %53 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %54 = call i64 @rb_commit_index(%struct.ring_buffer_per_cpu* %53)
  %55 = icmp sgt i64 %52, %54
  br label %56

56:                                               ; preds = %46, %33
  %57 = phi i1 [ false, %33 ], [ %55, %46 ]
  %58 = zext i1 %57 to i32
  %59 = call i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu* %38, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %90

62:                                               ; preds = %56
  %63 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %64 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %65 = call i32 @rb_update_iter_read_stamp(%struct.ring_buffer_iter* %63, %struct.ring_buffer_event* %64)
  %66 = load i32, i32* %6, align 4
  %67 = zext i32 %66 to i64
  %68 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %69 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %73 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %76 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @rb_page_size(i64 %77)
  %79 = icmp sge i64 %74, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %62
  %81 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  %82 = getelementptr inbounds %struct.ring_buffer_iter, %struct.ring_buffer_iter* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %85 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %83, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load %struct.ring_buffer_iter*, %struct.ring_buffer_iter** %2, align 8
  call void @rb_advance_iter(%struct.ring_buffer_iter* %89)
  br label %90

90:                                               ; preds = %29, %30, %61, %88, %80, %62
  ret void
}

declare dso_local i64 @rb_page_size(i64) #1

declare dso_local i32 @rb_inc_iter(%struct.ring_buffer_iter*) #1

declare dso_local %struct.ring_buffer_event* @rb_iter_head_event(%struct.ring_buffer_iter*) #1

declare dso_local i32 @rb_event_length(%struct.ring_buffer_event*) #1

declare dso_local i64 @RB_WARN_ON(%struct.ring_buffer_per_cpu*, i32) #1

declare dso_local i64 @rb_commit_index(%struct.ring_buffer_per_cpu*) #1

declare dso_local i32 @rb_update_iter_read_stamp(%struct.ring_buffer_iter*, %struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
