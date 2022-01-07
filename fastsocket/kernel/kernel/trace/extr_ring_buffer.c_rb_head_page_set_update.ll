; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_head_page_set_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_head_page_set_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { i32 }
%struct.buffer_page = type { i32 }

@RB_PAGE_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*, i32)* @rb_head_page_set_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_head_page_set_update(%struct.ring_buffer_per_cpu* %0, %struct.buffer_page* %1, %struct.buffer_page* %2, i32 %3) #0 {
  %5 = alloca %struct.ring_buffer_per_cpu*, align 8
  %6 = alloca %struct.buffer_page*, align 8
  %7 = alloca %struct.buffer_page*, align 8
  %8 = alloca i32, align 4
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %5, align 8
  store %struct.buffer_page* %1, %struct.buffer_page** %6, align 8
  store %struct.buffer_page* %2, %struct.buffer_page** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %5, align 8
  %10 = load %struct.buffer_page*, %struct.buffer_page** %6, align 8
  %11 = load %struct.buffer_page*, %struct.buffer_page** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @RB_PAGE_UPDATE, align 4
  %14 = call i32 @rb_head_page_set(%struct.ring_buffer_per_cpu* %9, %struct.buffer_page* %10, %struct.buffer_page* %11, i32 %12, i32 %13)
  ret i32 %14
}

declare dso_local i32 @rb_head_page_set(%struct.ring_buffer_per_cpu*, %struct.buffer_page*, %struct.buffer_page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
