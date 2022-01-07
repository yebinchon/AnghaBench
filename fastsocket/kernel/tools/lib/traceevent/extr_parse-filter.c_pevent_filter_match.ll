; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_parse-filter.c_pevent_filter_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32, %struct.pevent* }
%struct.pevent = type { i32 }
%struct.pevent_record = type { i32 }
%struct.filter_type = type { i32, i32 }

@FILTER_NONE = common dso_local global i32 0, align 4
@FILTER_NOEXIST = common dso_local global i32 0, align 4
@FILTER_MATCH = common dso_local global i32 0, align 4
@FILTER_MISS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pevent_filter_match(%struct.event_filter* %0, %struct.pevent_record* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_filter*, align 8
  %5 = alloca %struct.pevent_record*, align 8
  %6 = alloca %struct.pevent*, align 8
  %7 = alloca %struct.filter_type*, align 8
  %8 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %4, align 8
  store %struct.pevent_record* %1, %struct.pevent_record** %5, align 8
  %9 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %10 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %9, i32 0, i32 1
  %11 = load %struct.pevent*, %struct.pevent** %10, align 8
  store %struct.pevent* %11, %struct.pevent** %6, align 8
  %12 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %13 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @FILTER_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %45

18:                                               ; preds = %2
  %19 = load %struct.pevent*, %struct.pevent** %6, align 8
  %20 = load %struct.pevent_record*, %struct.pevent_record** %5, align 8
  %21 = call i32 @pevent_data_type(%struct.pevent* %19, %struct.pevent_record* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.filter_type* @find_filter_type(%struct.event_filter* %22, i32 %23)
  store %struct.filter_type* %24, %struct.filter_type** %7, align 8
  %25 = load %struct.filter_type*, %struct.filter_type** %7, align 8
  %26 = icmp ne %struct.filter_type* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = load i32, i32* @FILTER_NOEXIST, align 4
  store i32 %28, i32* %3, align 4
  br label %45

29:                                               ; preds = %18
  %30 = load %struct.filter_type*, %struct.filter_type** %7, align 8
  %31 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.filter_type*, %struct.filter_type** %7, align 8
  %34 = getelementptr inbounds %struct.filter_type, %struct.filter_type* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pevent_record*, %struct.pevent_record** %5, align 8
  %37 = call i64 @test_filter(i32 %32, i32 %35, %struct.pevent_record* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @FILTER_MATCH, align 4
  br label %43

41:                                               ; preds = %29
  %42 = load i32, i32* @FILTER_MISS, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %27, %16
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @pevent_data_type(%struct.pevent*, %struct.pevent_record*) #1

declare dso_local %struct.filter_type* @find_filter_type(%struct.event_filter*, i32) #1

declare dso_local i64 @test_filter(i32, i32, %struct.pevent_record*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
