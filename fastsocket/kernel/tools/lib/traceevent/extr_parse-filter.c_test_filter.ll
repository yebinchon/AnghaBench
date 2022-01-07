; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.filter_arg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pevent_record = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"oops!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*)* @test_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_filter(%struct.event_format* %0, %struct.filter_arg* %1, %struct.pevent_record* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca %struct.filter_arg*, align 8
  %7 = alloca %struct.pevent_record*, align 8
  store %struct.event_format* %0, %struct.event_format** %5, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %6, align 8
  store %struct.pevent_record* %2, %struct.pevent_record** %7, align 8
  %8 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %9 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %40 [
    i32 134, label %11
    i32 130, label %16
    i32 131, label %21
    i32 129, label %26
    i32 133, label %31
    i32 128, label %31
    i32 132, label %31
  ]

11:                                               ; preds = %3
  %12 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %13 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.event_format*, %struct.event_format** %5, align 8
  %18 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %19 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %20 = call i32 @test_op(%struct.event_format* %17, %struct.filter_arg* %18, %struct.pevent_record* %19)
  store i32 %20, i32* %4, align 4
  br label %42

21:                                               ; preds = %3
  %22 = load %struct.event_format*, %struct.event_format** %5, align 8
  %23 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %24 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %25 = call i32 @test_num(%struct.event_format* %22, %struct.filter_arg* %23, %struct.pevent_record* %24)
  store i32 %25, i32* %4, align 4
  br label %42

26:                                               ; preds = %3
  %27 = load %struct.event_format*, %struct.event_format** %5, align 8
  %28 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %29 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %30 = call i32 @test_str(%struct.event_format* %27, %struct.filter_arg* %28, %struct.pevent_record* %29)
  store i32 %30, i32* %4, align 4
  br label %42

31:                                               ; preds = %3, %3, %3
  %32 = load %struct.event_format*, %struct.event_format** %5, align 8
  %33 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %34 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %35 = call i32 @get_arg_value(%struct.event_format* %32, %struct.filter_arg* %33, %struct.pevent_record* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %4, align 4
  br label %42

40:                                               ; preds = %3
  %41 = call i32 @die(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %31, %26, %21, %16, %11
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @test_op(%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*) #1

declare dso_local i32 @test_num(%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*) #1

declare dso_local i32 @test_str(%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*) #1

declare dso_local i32 @get_arg_value(%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
