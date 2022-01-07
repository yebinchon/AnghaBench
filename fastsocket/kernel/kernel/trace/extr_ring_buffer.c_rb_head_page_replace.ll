; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_head_page_replace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_head_page_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_page = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@RB_FLAG_MASK = common dso_local global i64 0, align 8
@RB_PAGE_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.buffer_page*, %struct.buffer_page*)* @rb_head_page_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_head_page_replace(%struct.buffer_page* %0, %struct.buffer_page* %1) #0 {
  %3 = alloca %struct.buffer_page*, align 8
  %4 = alloca %struct.buffer_page*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.buffer_page* %0, %struct.buffer_page** %3, align 8
  store %struct.buffer_page* %1, %struct.buffer_page** %4, align 8
  %8 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %9 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to i64*
  store i64* %13, i64** %5, align 8
  %14 = load i64*, i64** %5, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @RB_FLAG_MASK, align 8
  %17 = xor i64 %16, -1
  %18 = and i64 %15, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* @RB_PAGE_HEAD, align 8
  %20 = load i64, i64* %6, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %6, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.buffer_page*, %struct.buffer_page** %4, align 8
  %25 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %24, i32 0, i32 0
  %26 = ptrtoint %struct.TYPE_4__* %25 to i64
  %27 = call i64 @cmpxchg(i64* %22, i64 %23, i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i64 @cmpxchg(i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
