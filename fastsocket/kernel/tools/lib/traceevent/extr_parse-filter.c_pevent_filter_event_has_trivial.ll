; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_event_has_trivial.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_event_has_trivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32 }
%struct.filter_type = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FILTER_ARG_BOOLEAN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_filter_event_has_trivial(%struct.event_filter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.filter_type*, align 8
  store %struct.event_filter* %0, %struct.event_filter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %10 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.event_filter*, %struct.event_filter** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.filter_type* @find_filter_type(%struct.event_filter* %15, i32 %16)
  store %struct.filter_type* %17, %struct.filter_type** %8, align 8
  %18 = load %struct.filter_type*, %struct.filter_type** %8, align 8
  %19 = icmp ne %struct.filter_type* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %50

21:                                               ; preds = %14
  %22 = load %struct.filter_type*, %struct.filter_type** %8, align 8
  %23 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FILTER_ARG_BOOLEAN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %50

30:                                               ; preds = %21
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %49 [
    i32 129, label %32
    i32 128, label %42
  ]

32:                                               ; preds = %30
  %33 = load %struct.filter_type*, %struct.filter_type** %8, align 8
  %34 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %30
  %43 = load %struct.filter_type*, %struct.filter_type** %8, align 8
  %44 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %30
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %42, %32, %29, %20, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local %struct.filter_type* @find_filter_type(%struct.event_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
