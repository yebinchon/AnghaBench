; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_per_cpu_empty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_per_cpu_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { %struct.buffer_page*, %struct.buffer_page* }
%struct.buffer_page = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*)* @rb_per_cpu_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_per_cpu_empty(%struct.ring_buffer_per_cpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ring_buffer_per_cpu*, align 8
  %4 = alloca %struct.buffer_page*, align 8
  %5 = alloca %struct.buffer_page*, align 8
  %6 = alloca %struct.buffer_page*, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %3, align 8
  %7 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %8 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %7, i32 0, i32 1
  %9 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  store %struct.buffer_page* %9, %struct.buffer_page** %4, align 8
  %10 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %11 = call %struct.buffer_page* @rb_set_head_page(%struct.ring_buffer_per_cpu* %10)
  store %struct.buffer_page* %11, %struct.buffer_page** %5, align 8
  %12 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %3, align 8
  %13 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %12, i32 0, i32 0
  %14 = load %struct.buffer_page*, %struct.buffer_page** %13, align 8
  store %struct.buffer_page* %14, %struct.buffer_page** %6, align 8
  %15 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %16 = icmp ne %struct.buffer_page* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %51

22:                                               ; preds = %1
  %23 = load %struct.buffer_page*, %struct.buffer_page** %4, align 8
  %24 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.buffer_page*, %struct.buffer_page** %4, align 8
  %27 = call i64 @rb_page_commit(%struct.buffer_page* %26)
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %22
  %30 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %31 = load %struct.buffer_page*, %struct.buffer_page** %4, align 8
  %32 = icmp eq %struct.buffer_page* %30, %31
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %35 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %36 = icmp eq %struct.buffer_page* %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %39 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %42 = call i64 @rb_page_commit(%struct.buffer_page* %41)
  %43 = icmp eq i64 %40, %42
  br label %44

44:                                               ; preds = %37, %33
  %45 = phi i1 [ false, %33 ], [ %43, %37 ]
  br label %46

46:                                               ; preds = %44, %29
  %47 = phi i1 [ true, %29 ], [ %45, %44 ]
  br label %48

48:                                               ; preds = %46, %22
  %49 = phi i1 [ false, %22 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %48, %21
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.buffer_page* @rb_set_head_page(%struct.ring_buffer_per_cpu*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rb_page_commit(%struct.buffer_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
