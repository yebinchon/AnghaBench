; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_tail_page_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_tail_page_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { %struct.buffer_page* }
%struct.buffer_page = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@RB_WRITE_INTCNT = common dso_local global i32 0, align 4
@RB_WRITE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*)* @rb_tail_page_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_tail_page_update(%struct.ring_buffer_per_cpu* %0, %struct.buffer_page* %1, %struct.buffer_page* %2) #0 {
  %4 = alloca %struct.ring_buffer_per_cpu*, align 8
  %5 = alloca %struct.buffer_page*, align 8
  %6 = alloca %struct.buffer_page*, align 8
  %7 = alloca %struct.buffer_page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %4, align 8
  store %struct.buffer_page* %1, %struct.buffer_page** %5, align 8
  store %struct.buffer_page* %2, %struct.buffer_page** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* @RB_WRITE_INTCNT, align 4
  %14 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %15 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %14, i32 0, i32 2
  %16 = call i64 @local_add_return(i32 %13, i32* %15)
  store i64 %16, i64* %9, align 8
  %17 = load i32, i32* @RB_WRITE_INTCNT, align 4
  %18 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %19 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %18, i32 0, i32 1
  %20 = call i64 @local_add_return(i32 %17, i32* %19)
  store i64 %20, i64* %8, align 8
  %21 = call i32 (...) @barrier()
  %22 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %23 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %24 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %23, i32 0, i32 0
  %25 = load %struct.buffer_page*, %struct.buffer_page** %24, align 8
  %26 = icmp eq %struct.buffer_page* %22, %25
  br i1 %26, label %27, label %61

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @RB_WRITE_MASK, align 8
  %30 = xor i64 %29, -1
  %31 = and i64 %28, %30
  store i64 %31, i64* %11, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @RB_WRITE_MASK, align 8
  %34 = xor i64 %33, -1
  %35 = and i64 %32, %34
  store i64 %35, i64* %12, align 8
  %36 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %37 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %36, i32 0, i32 2
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @local_cmpxchg(i32* %37, i64 %38, i64 %39)
  %41 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %42 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %41, i32 0, i32 1
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @local_cmpxchg(i32* %42, i64 %43, i64 %44)
  %46 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %47 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @local_set(i32* %49, i32 0)
  %51 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %4, align 8
  %52 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %51, i32 0, i32 0
  %53 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %54 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %55 = call %struct.buffer_page* @cmpxchg(%struct.buffer_page** %52, %struct.buffer_page* %53, %struct.buffer_page* %54)
  store %struct.buffer_page* %55, %struct.buffer_page** %7, align 8
  %56 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %57 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  %58 = icmp eq %struct.buffer_page* %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %27
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %27
  br label %61

61:                                               ; preds = %60, %3
  %62 = load i32, i32* %10, align 4
  ret i32 %62
}

declare dso_local i64 @local_add_return(i32, i32*) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @local_cmpxchg(i32*, i64, i64) #1

declare dso_local i32 @local_set(i32*, i32) #1

declare dso_local %struct.buffer_page* @cmpxchg(%struct.buffer_page**, %struct.buffer_page*, %struct.buffer_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
