; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_append_operand_char.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_append_operand_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_parse_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@MAX_FILTER_STR_VAL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filter_parse_state*, i8)* @append_operand_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_operand_char(%struct.filter_parse_state* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.filter_parse_state*, align 8
  %5 = alloca i8, align 1
  store %struct.filter_parse_state* %0, %struct.filter_parse_state** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %7 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MAX_FILTER_STR_VAL, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp eq i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %29

16:                                               ; preds = %2
  %17 = load i8, i8* %5, align 1
  %18 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %19 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %23 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = sext i32 %25 to i64
  %28 = getelementptr inbounds i8, i8* %21, i64 %27
  store i8 %17, i8* %28, align 1
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %16, %13
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
