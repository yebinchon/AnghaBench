; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_reset_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_reset_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32 }
%struct.buffer_page = type { i32 }
%struct.ring_buffer_event = type { i64*, i32, i32 }

@BUF_PAGE_SIZE = common dso_local global i64 0, align 8
@bitfield = common dso_local global i32 0, align 4
@RB_EVNT_MIN_SIZE = common dso_local global i64 0, align 8
@RB_EVNT_HDR_SIZE = common dso_local global i64 0, align 8
@RINGBUF_TYPE_PADDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_per_cpu*, %struct.buffer_page*, i64, i64)* @rb_reset_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_reset_tail(%struct.ring_buffer_per_cpu* %0, %struct.buffer_page* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca %struct.buffer_page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ring_buffer_event*, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %5, align 8
  store %struct.buffer_page* %1, %struct.buffer_page** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %16 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %15, i32 0, i32 0
  %17 = call i32 @local_sub(i64 %14, i32* %16)
  br label %61

18:                                               ; preds = %4
  %19 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.ring_buffer_event* @__rb_page_index(%struct.buffer_page* %19, i64 %20)
  store %struct.ring_buffer_event* %21, %struct.ring_buffer_event** %9, align 8
  %22 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %23 = load i32, i32* @bitfield, align 4
  %24 = call i32 @kmemcheck_annotate_bitfield(%struct.ring_buffer_event* %22, i32 %23)
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %27 = load i64, i64* @RB_EVNT_MIN_SIZE, align 8
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %32 = call i32 @rb_event_set_padding(%struct.ring_buffer_event* %31)
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %35 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %34, i32 0, i32 0
  %36 = call i32 @local_sub(i64 %33, i32* %35)
  br label %61

37:                                               ; preds = %18
  %38 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %39 = load i64, i64* %7, align 8
  %40 = sub i64 %38, %39
  %41 = load i64, i64* @RB_EVNT_HDR_SIZE, align 8
  %42 = sub i64 %40, %41
  %43 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %44 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %42, i64* %46, align 8
  %47 = load i32, i32* @RINGBUF_TYPE_PADDING, align 4
  %48 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %49 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %9, align 8
  %51 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = add i64 %52, %53
  %55 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %56 = sub i64 %54, %55
  store i64 %56, i64* %8, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %59 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %58, i32 0, i32 0
  %60 = call i32 @local_sub(i64 %57, i32* %59)
  br label %61

61:                                               ; preds = %37, %30, %13
  ret void
}

declare dso_local i32 @local_sub(i64, i32*) #1

declare dso_local %struct.ring_buffer_event* @__rb_page_index(%struct.buffer_page*, i64) #1

declare dso_local i32 @kmemcheck_annotate_bitfield(%struct.ring_buffer_event*, i32) #1

declare dso_local i32 @rb_event_set_padding(%struct.ring_buffer_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
