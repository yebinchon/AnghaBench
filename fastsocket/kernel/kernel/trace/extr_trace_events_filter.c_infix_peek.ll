; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_infix_peek.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_infix_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_parse_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.filter_parse_state*)* @infix_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @infix_peek(%struct.filter_parse_state* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.filter_parse_state*, align 8
  store %struct.filter_parse_state* %0, %struct.filter_parse_state** %3, align 8
  %4 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %5 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %9 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = icmp eq i64 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i8 0, i8* %2, align 1
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %17 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %21 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i8, i8* %19, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %2, align 1
  br label %26

26:                                               ; preds = %15, %14
  %27 = load i8, i8* %2, align 1
  ret i8 %27
}

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
