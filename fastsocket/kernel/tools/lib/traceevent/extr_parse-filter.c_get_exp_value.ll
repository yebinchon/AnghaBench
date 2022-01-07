; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_get_exp_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_get_exp_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.filter_arg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pevent_record = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"error in exp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.event_format*, %struct.filter_arg*, %struct.pevent_record*)* @get_exp_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_exp_value(%struct.event_format* %0, %struct.filter_arg* %1, %struct.pevent_record* %2) #0 {
  %4 = alloca i64, align 8
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
  switch i32 %27, label %69 [
    i32 138, label %28
    i32 129, label %32
    i32 133, label %36
    i32 136, label %40
    i32 134, label %44
    i32 130, label %48
    i32 135, label %52
    i32 137, label %56
    i32 131, label %60
    i32 128, label %64
    i32 132, label %68
  ]

28:                                               ; preds = %3
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %29, %30
  store i64 %31, i64* %4, align 8
  br label %72

32:                                               ; preds = %3
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = sub i64 %33, %34
  store i64 %35, i64* %4, align 8
  br label %72

36:                                               ; preds = %3
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = mul i64 %37, %38
  store i64 %39, i64* %4, align 8
  br label %72

40:                                               ; preds = %3
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %9, align 8
  %43 = udiv i64 %41, %42
  store i64 %43, i64* %4, align 8
  br label %72

44:                                               ; preds = %3
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = urem i64 %45, %46
  store i64 %47, i64* %4, align 8
  br label %72

48:                                               ; preds = %3
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = lshr i64 %49, %50
  store i64 %51, i64* %4, align 8
  br label %72

52:                                               ; preds = %3
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = shl i64 %53, %54
  store i64 %55, i64* %4, align 8
  br label %72

56:                                               ; preds = %3
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = and i64 %57, %58
  store i64 %59, i64* %4, align 8
  br label %72

60:                                               ; preds = %3
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = or i64 %61, %62
  store i64 %63, i64* %4, align 8
  br label %72

64:                                               ; preds = %3
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* %9, align 8
  %67 = xor i64 %65, %66
  store i64 %67, i64* %4, align 8
  br label %72

68:                                               ; preds = %3
  br label %69

69:                                               ; preds = %3, %68
  %70 = call i32 @die(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69
  store i64 0, i64* %4, align 8
  br label %72

72:                                               ; preds = %71, %64, %60, %56, %52, %48, %44, %40, %36, %32, %28
  %73 = load i64, i64* %4, align 8
  ret i64 %73
}

declare dso_local i64 @get_arg_value(%struct.event_format*, i32, %struct.pevent_record*) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
