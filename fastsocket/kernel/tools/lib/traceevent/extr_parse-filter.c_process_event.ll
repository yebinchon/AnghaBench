; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.filter_arg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unbalanced number of ')'\00", align 1
@FILTER_ARG_BOOLEAN = common dso_local global i32 0, align 4
@FILTER_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_format*, i8*, %struct.filter_arg**, i8**)* @process_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_event(%struct.event_format* %0, i8* %1, %struct.filter_arg** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.event_format*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.filter_arg**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.event_format* %0, %struct.event_format** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.filter_arg** %2, %struct.filter_arg*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = call i32 @pevent_buffer_init(i8* %11, i32 %13)
  %15 = load %struct.event_format*, %struct.event_format** %6, align 8
  %16 = load %struct.filter_arg**, %struct.filter_arg*** %8, align 8
  %17 = load i8**, i8*** %9, align 8
  %18 = call i32 @process_filter(%struct.event_format* %15, %struct.filter_arg** %16, i8** %17, i32 0)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i8**, i8*** %9, align 8
  %23 = call i32 @show_error(i8** %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %46

24:                                               ; preds = %4
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %5, align 4
  br label %46

29:                                               ; preds = %24
  %30 = load %struct.filter_arg**, %struct.filter_arg*** %8, align 8
  %31 = load %struct.filter_arg*, %struct.filter_arg** %30, align 8
  %32 = icmp ne %struct.filter_arg* %31, null
  br i1 %32, label %45, label %33

33:                                               ; preds = %29
  %34 = call %struct.filter_arg* (...) @allocate_arg()
  %35 = load %struct.filter_arg**, %struct.filter_arg*** %8, align 8
  store %struct.filter_arg* %34, %struct.filter_arg** %35, align 8
  %36 = load i32, i32* @FILTER_ARG_BOOLEAN, align 4
  %37 = load %struct.filter_arg**, %struct.filter_arg*** %8, align 8
  %38 = load %struct.filter_arg*, %struct.filter_arg** %37, align 8
  %39 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @FILTER_FALSE, align 4
  %41 = load %struct.filter_arg**, %struct.filter_arg*** %8, align 8
  %42 = load %struct.filter_arg*, %struct.filter_arg** %41, align 8
  %43 = getelementptr inbounds %struct.filter_arg, %struct.filter_arg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %33, %29
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %27, %21
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @pevent_buffer_init(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @process_filter(%struct.event_format*, %struct.filter_arg**, i8**, i32) #1

declare dso_local i32 @show_error(i8**, i8*) #1

declare dso_local %struct.filter_arg* @allocate_arg(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
