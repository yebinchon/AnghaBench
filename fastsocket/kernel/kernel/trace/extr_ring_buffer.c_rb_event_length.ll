; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_event_length.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_ring_buffer.c_rb_event_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring_buffer_event = type { i32, i32* }

@RB_EVNT_HDR_SIZE = common dso_local global i32 0, align 4
@RB_LEN_TIME_EXTEND = common dso_local global i32 0, align 4
@RB_LEN_TIME_STAMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ring_buffer_event*)* @rb_event_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rb_event_length(%struct.ring_buffer_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ring_buffer_event*, align 8
  store %struct.ring_buffer_event* %0, %struct.ring_buffer_event** %3, align 8
  %4 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  %5 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %27 [
    i32 130, label %7
    i32 129, label %20
    i32 128, label %22
    i32 131, label %24
  ]

7:                                                ; preds = %1
  %8 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  %9 = call i32 @rb_null_event(%struct.ring_buffer_event* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  store i32 -1, i32* %2, align 4
  br label %30

12:                                               ; preds = %7
  %13 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  %14 = getelementptr inbounds %struct.ring_buffer_event, %struct.ring_buffer_event* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @RB_EVNT_HDR_SIZE, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load i32, i32* @RB_LEN_TIME_EXTEND, align 4
  store i32 %21, i32* %2, align 4
  br label %30

22:                                               ; preds = %1
  %23 = load i32, i32* @RB_LEN_TIME_STAMP, align 4
  store i32 %23, i32* %2, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.ring_buffer_event*, %struct.ring_buffer_event** %3, align 8
  %26 = call i32 @rb_event_data_length(%struct.ring_buffer_event* %25)
  store i32 %26, i32* %2, align 4
  br label %30

27:                                               ; preds = %1
  %28 = call i32 (...) @BUG()
  br label %29

29:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %24, %22, %20, %12, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @rb_null_event(%struct.ring_buffer_event*) #1

declare dso_local i32 @rb_event_data_length(%struct.ring_buffer_event*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
