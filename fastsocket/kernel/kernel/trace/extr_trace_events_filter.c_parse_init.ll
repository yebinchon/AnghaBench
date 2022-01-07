; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_parse_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_parse_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_parse_state = type { i32, i32, %struct.filter_op*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.filter_op = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filter_parse_state*, %struct.filter_op*, i8*)* @parse_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_init(%struct.filter_parse_state* %0, %struct.filter_op* %1, i8* %2) #0 {
  %4 = alloca %struct.filter_parse_state*, align 8
  %5 = alloca %struct.filter_op*, align 8
  %6 = alloca i8*, align 8
  store %struct.filter_parse_state* %0, %struct.filter_parse_state** %4, align 8
  store %struct.filter_op* %1, %struct.filter_op** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %8 = call i32 @memset(%struct.filter_parse_state* %7, i8 signext 0, i32 32)
  %9 = load i8*, i8** %6, align 8
  %10 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %11 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i8* %9, i8** %12, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %16 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load %struct.filter_op*, %struct.filter_op** %5, align 8
  %19 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %20 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %19, i32 0, i32 2
  store %struct.filter_op* %18, %struct.filter_op** %20, align 8
  %21 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %22 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.filter_parse_state*, %struct.filter_parse_state** %4, align 8
  %25 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %24, i32 0, i32 0
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  ret void
}

declare dso_local i32 @memset(%struct.filter_parse_state*, i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
