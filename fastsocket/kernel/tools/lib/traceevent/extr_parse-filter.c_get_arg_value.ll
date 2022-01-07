; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_get_arg_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_get_arg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.filter_arg = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pevent_record = type { i32 }

@FILTER_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"must have number field!\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"oops in filter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*)* @get_arg_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_arg_value(%struct.event_format* %0, %struct.filter_arg* %1, %struct.pevent_record* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.event_format*, align 8
  %6 = alloca %struct.filter_arg*, align 8
  %7 = alloca %struct.pevent_record*, align 8
  store %struct.event_format* %0, %struct.event_format** %5, align 8
  store %struct.filter_arg* %1, %struct.filter_arg** %6, align 8
  store %struct.pevent_record* %2, %struct.pevent_record** %7, align 8
  %8 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %9 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %38 [
    i32 129, label %11
    i32 128, label %19
    i32 130, label %33
  ]

11:                                               ; preds = %3
  %12 = load %struct.event_format*, %struct.event_format** %5, align 8
  %13 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %14 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %18 = call i64 @get_value(%struct.event_format* %12, i32 %16, %struct.pevent_record* %17)
  store i64 %18, i64* %4, align 8
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %21 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @FILTER_NUMBER, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = call i32 @die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %19
  %29 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %30 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %4, align 8
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.event_format*, %struct.event_format** %5, align 8
  %35 = load %struct.filter_arg*, %struct.filter_arg** %6, align 8
  %36 = load %struct.pevent_record*, %struct.pevent_record** %7, align 8
  %37 = call i64 @get_exp_value(%struct.event_format* %34, %struct.filter_arg* %35, %struct.pevent_record* %36)
  store i64 %37, i64* %4, align 8
  br label %41

38:                                               ; preds = %3
  %39 = call i32 @die(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %40

40:                                               ; preds = %38
  store i64 0, i64* %4, align 8
  br label %41

41:                                               ; preds = %40, %33, %28, %11
  %42 = load i64, i64* %4, align 8
  ret i64 %42
}

declare dso_local i64 @get_value(%struct.event_format*, i32, %struct.pevent_record*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i64 @get_exp_value(%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
