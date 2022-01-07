; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_update_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_update_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32, i32* }

@RB_EVNT_HDR_SIZE = common dso_local global i32 0, align 4
@RB_MAX_SMALL_DATA = common dso_local global i32 0, align 4
@RB_ALIGNMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ring_buffer_event*, i32, i32)* @rb_update_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb_update_event(%struct.ring_buffer_event* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ring_buffer_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ring_buffer_event* %0, %struct.ring_buffer_event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %9 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %32 [
    i32 130, label %11
    i32 129, label %11
    i32 128, label %11
    i32 0, label %12
  ]

11:                                               ; preds = %3, %3, %3
  br label %34

12:                                               ; preds = %3
  %13 = load i32, i32* @RB_EVNT_HDR_SIZE, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sub i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @RB_MAX_SMALL_DATA, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %12
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %22 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %20, i32* %24, align 4
  br label %31

25:                                               ; preds = %12
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RB_ALIGNMENT, align 4
  %28 = call i32 @DIV_ROUND_UP(i32 %26, i32 %27)
  %29 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %4, align 8
  %30 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  br label %31

31:                                               ; preds = %25, %19
  br label %34

32:                                               ; preds = %3
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %31, %11
  ret void
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
