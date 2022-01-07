; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_try_to_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_try_to_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { %struct.buffer_page* }
%struct.buffer_page = type { i8*, i32 }
%struct.ring_buffer_event = type { i32 }

@PAGE_MASK = common dso_local global i64 0, align 8
@RB_WRITE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*, %struct.ring_buffer_event*)* @rb_try_to_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_try_to_discard(%struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca %struct.ring_buffer_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.buffer_page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %4, align 8
  store %struct.ring_buffer_event* %1, %struct.ring_buffer_event** %5, align 8
  %12 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %13 = call i64 @rb_event_index(%struct.ring_buffer_event* %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %16 = call i64 @rb_event_length(%struct.ring_buffer_event* %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %7, align 8
  %18 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  %19 = ptrtoint %struct.ring_buffer_event* %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* @PAGE_MASK, align 8
  %21 = load i64, i64* %10, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %10, align 8
  %23 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %24 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %23, i32 0, i32 0
  %25 = load %struct.buffer_page*, %struct.buffer_page** %24, align 8
  store %struct.buffer_page* %25, %struct.buffer_page** %8, align 8
  %26 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %27 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = icmp eq i8* %28, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %2
  %33 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %34 = call i64 @rb_page_write(%struct.buffer_page* %33)
  %35 = load i64, i64* %7, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %60

37:                                               ; preds = %32
  %38 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %39 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %38, i32 0, i32 1
  %40 = call i64 @local_read(i32* %39)
  %41 = load i64, i64* @RB_WRITE_MASK, align 8
  %42 = xor i64 %41, -1
  %43 = and i64 %40, %42
  store i64 %43, i64* %11, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* %6, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %6, align 8
  %50 = load %struct.buffer_page*, %struct.buffer_page** %8, align 8
  %51 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %50, i32 0, i32 1
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i64 @local_cmpxchg(i32* %51, i64 %52, i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %61

59:                                               ; preds = %37
  br label %60

60:                                               ; preds = %59, %32, %2
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %58
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @rb_event_index(%struct.ring_buffer_event*) #1

declare dso_local i64 @rb_event_length(%struct.ring_buffer_event*) #1

declare dso_local i64 @rb_page_write(%struct.buffer_page*) #1

declare dso_local i64 @local_read(i32*) #1

declare dso_local i64 @local_cmpxchg(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
