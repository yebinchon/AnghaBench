; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_num.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_test_num.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pevent_record = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*)* @test_num to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_num(%struct.event_format* %0, %struct.filter_arg* %1, %struct.pevent_record* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca %struct.filter_arg*, align 8
  %7 = alloca %struct.pevent_record*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.event_format* %0, %struct.event_format** %5, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %6, align 8
  store %struct.pevent_record* %2, %struct.pevent_record** %7, align 8
  %10 = load %struct.event_format*, %struct.event_format** %5, align 8
  %11 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %12 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %16 = call i64 @get_arg_value(%struct.event_format* %10, i32 %14, %struct.pevent_record* %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.event_format*, %struct.event_format** %5, align 8
  %18 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %19 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %23 = call i64 @get_arg_value(%struct.event_format* %17, i32 %21, %struct.pevent_record* %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %25 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %58 [
    i32 133, label %28
    i32 128, label %33
    i32 131, label %38
    i32 129, label %43
    i32 132, label %48
    i32 130, label %53
  ]

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %4, align 4
  br label %59

33:                                               ; preds = %3
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ne i64 %34, %35
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %4, align 4
  br label %59

38:                                               ; preds = %3
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ugt i64 %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %4, align 4
  br label %59

43:                                               ; preds = %3
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ult i64 %44, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %59

48:                                               ; preds = %3
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = icmp uge i64 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %4, align 4
  br label %59

53:                                               ; preds = %3
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ule i64 %54, %55
  %57 = zext i1 %56 to i32
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %53, %48, %43, %38, %33, %28
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @get_arg_value(%struct.event_format*, i32, %struct.pevent_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
