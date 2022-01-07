; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_head_page_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_head_page_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_per_cpu = type { %struct.buffer_page* }
%struct.buffer_page = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_per_cpu*)* @rb_head_page_activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_head_page_activate(%struct.ring_buffer_per_cpu* %0) #0 {
  %2 = alloca %struct.ring_buffer_per_cpu*, align 8
  %3 = alloca %struct.buffer_page*, align 8
  store %struct.ring_buffer_per_cpu* %0, %struct.ring_buffer_per_cpu** %2, align 8
  %4 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %5 = getelementptr inbounds %struct.ring_buffer_per_cpu, %struct.ring_buffer_per_cpu* %4, i32 0, i32 0
  %6 = load %struct.buffer_page*, %struct.buffer_page** %5, align 8
  store %struct.buffer_page* %6, %struct.buffer_page** %3, align 8
  %7 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %8 = icmp ne %struct.buffer_page* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.ring_buffer_per_cpu*, %struct.ring_buffer_per_cpu** %2, align 8
  %12 = load %struct.buffer_page*, %struct.buffer_page** %3, align 8
  %13 = getelementptr inbounds %struct.buffer_page, %struct.buffer_page* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @rb_set_list_to_head(%struct.ring_buffer_per_cpu* %11, i32 %15)
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @rb_set_list_to_head(%struct.ring_buffer_per_cpu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
