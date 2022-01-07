; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c___rb_reserve_next.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c___rb_reserve_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32 }
%struct.ring_buffer_per_cpu = type { %struct.buffer_page*, %struct.buffer_page* }
%struct.buffer_page = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RB_WRITE_MASK = common dso_local global i64 0, align 8
@BUF_PAGE_SIZE = common dso_local global i64 0, align 8
@bitfield = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ring_buffer_event* (%struct.ring_buffer_per_cpu*, i32, i64, i32*)* @__rb_reserve_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ring_buffer_event* @__rb_reserve_next(%struct.ring_buffer_per_cpu* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.ring_buffer_event*, align 8
  %6 = alloca %struct.ring_buffer_per_cpu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.buffer_page*, align 8
  %11 = alloca %struct.buffer_page*, align 8
  %12 = alloca %struct.ring_buffer_event*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %16 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %15, i32 0, i32 1
  %17 = load %struct.buffer_page*, %struct.buffer_page** %16, align 8
  store %struct.buffer_page* %17, %struct.buffer_page** %11, align 8
  %18 = call i32 (...) @barrier()
  %19 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %20 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %19, i32 0, i32 0
  %21 = load %struct.buffer_page*, %struct.buffer_page** %20, align 8
  store %struct.buffer_page* %21, %struct.buffer_page** %10, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.buffer_page*, %struct.buffer_page** %10, align 8
  %24 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %23, i32 0, i32 2
  %25 = call i64 @local_add_return(i64 %22, i32* %24)
  store i64 %25, i64* %14, align 8
  %26 = load i64, i64* @RB_WRITE_MASK, align 8
  %27 = load i64, i64* %14, align 8
  %28 = and i64 %27, %26
  store i64 %28, i64* %14, align 8
  %29 = load i64, i64* %14, align 8
  %30 = load i64, i64* %8, align 8
  %31 = sub i64 %29, %30
  store i64 %31, i64* %13, align 8
  %32 = load i64, i64* %14, align 8
  %33 = load i64, i64* @BUF_PAGE_SIZE, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %4
  %36 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %13, align 8
  %39 = load %struct.buffer_page*, %struct.buffer_page** %11, align 8
  %40 = load %struct.buffer_page*, %struct.buffer_page** %10, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call %struct.ring_buffer_event* @rb_move_tail(%struct.ring_buffer_per_cpu* %36, i64 %37, i64 %38, %struct.buffer_page* %39, %struct.buffer_page* %40, i32* %41)
  store %struct.ring_buffer_event* %42, %struct.ring_buffer_event** %5, align 8
  br label %76

43:                                               ; preds = %4
  %44 = load %struct.buffer_page*, %struct.buffer_page** %10, align 8
  %45 = load i64, i64* %13, align 8
  %46 = call %struct.ring_buffer_event* @__rb_page_index(%struct.buffer_page* %44, i64 %45)
  store %struct.ring_buffer_event* %46, %struct.ring_buffer_event** %12, align 8
  %47 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %48 = load i32, i32* @bitfield, align 4
  %49 = call i32 @kmemcheck_annotate_bitfield(%struct.ring_buffer_event* %47, i32 %48)
  %50 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @rb_update_event(%struct.ring_buffer_event* %50, i32 %51, i64 %52)
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @likely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %43
  %61 = load %struct.buffer_page*, %struct.buffer_page** %10, align 8
  %62 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %61, i32 0, i32 1
  %63 = call i32 @local_inc(i32* %62)
  br label %64

64:                                               ; preds = %60, %43
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.buffer_page*, %struct.buffer_page** %10, align 8
  %71 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %64
  %75 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %12, align 8
  store %struct.ring_buffer_event* %75, %struct.ring_buffer_event** %5, align 8
  br label %76

76:                                               ; preds = %74, %35
  %77 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %5, align 8
  ret %struct.ring_buffer_event* %77
}

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @local_add_return(i64, i32*) #1

declare dso_local %struct.ring_buffer_event* @rb_move_tail(%struct.ring_buffer_per_cpu*, i64, i64, %struct.buffer_page*, %struct.buffer_page*, i32*) #1

declare dso_local %struct.ring_buffer_event* @__rb_page_index(%struct.buffer_page*, i64) #1

declare dso_local i32 @kmemcheck_annotate_bitfield(%struct.ring_buffer_event*, i32) #1

declare dso_local i32 @rb_update_event(%struct.ring_buffer_event*, i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @local_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
