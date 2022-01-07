; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_append_filter_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_append_filter_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_parse_state = type { i32, i64 }
%struct.event_filter = type { i32 }

@GFP_TEMPORARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"\0Aparse_error: %s\0A\00", align 1
@err_text = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filter_parse_state*, %struct.event_filter*)* @append_filter_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_filter_err(%struct.filter_parse_state* %0, %struct.event_filter* %1) #0 {
  %3 = alloca %struct.filter_parse_state*, align 8
  %4 = alloca %struct.event_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.filter_parse_state* %0, %struct.filter_parse_state** %3, align 8
  store %struct.event_filter* %1, %struct.event_filter** %4, align 8
  %8 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %9 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @GFP_TEMPORARY, align 4
  %12 = call i64 @__get_free_page(i32 %11)
  %13 = inttoptr i64 %12 to i8*
  store i8* %13, i8** %6, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %19 = call i32 @append_filter_string(%struct.event_filter* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @PAGE_SIZE, align 4
  %22 = call i32 @memset(i8* %20, i8 signext 32, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sub nsw i32 %24, 128
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %17
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, i8* %29, i64 %31
  store i8 94, i8* %32, align 1
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %7, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = load i8**, i8*** @err_text, align 8
  %40 = load %struct.filter_parse_state*, %struct.filter_parse_state** %3, align 8
  %41 = getelementptr inbounds %struct.filter_parse_state, %struct.filter_parse_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8*, i8** %39, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @sprintf(i8* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @append_filter_string(%struct.event_filter* %46, i8* %47)
  %49 = load i8*, i8** %6, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = call i32 @free_page(i64 %50)
  br label %52

52:                                               ; preds = %28, %16
  ret void
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @append_filter_string(%struct.event_filter*, i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
