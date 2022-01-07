; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_list_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/lib/traceevent/extr_event-parse.c_pevent_list_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_format = type { i32 }
%struct.pevent = type { i32, i32, %struct.event_format**, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.event_format** @pevent_list_events(%struct.pevent* %0, i32 %1) #0 {
  %3 = alloca %struct.event_format**, align 8
  %4 = alloca %struct.pevent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.event_format**, align 8
  %7 = alloca i32 (i8*, i8*)*, align 8
  store %struct.pevent* %0, %struct.pevent** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pevent*, %struct.pevent** %4, align 8
  %9 = getelementptr inbounds %struct.pevent, %struct.pevent* %8, i32 0, i32 2
  %10 = load %struct.event_format**, %struct.event_format*** %9, align 8
  store %struct.event_format** %10, %struct.event_format*** %6, align 8
  %11 = load %struct.event_format**, %struct.event_format*** %6, align 8
  %12 = icmp ne %struct.event_format** %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load %struct.pevent*, %struct.pevent** %4, align 8
  %15 = getelementptr inbounds %struct.pevent, %struct.pevent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load %struct.event_format**, %struct.event_format*** %6, align 8
  store %struct.event_format** %20, %struct.event_format*** %3, align 8
  br label %84

21:                                               ; preds = %13, %2
  %22 = load %struct.event_format**, %struct.event_format*** %6, align 8
  %23 = icmp ne %struct.event_format** %22, null
  br i1 %23, label %65, label %24

24:                                               ; preds = %21
  %25 = load %struct.pevent*, %struct.pevent** %4, align 8
  %26 = getelementptr inbounds %struct.pevent, %struct.pevent* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = mul i64 8, %29
  %31 = trunc i64 %30 to i32
  %32 = call %struct.event_format** @malloc(i32 %31)
  store %struct.event_format** %32, %struct.event_format*** %6, align 8
  %33 = load %struct.event_format**, %struct.event_format*** %6, align 8
  %34 = icmp ne %struct.event_format** %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  store %struct.event_format** null, %struct.event_format*** %3, align 8
  br label %84

36:                                               ; preds = %24
  %37 = load %struct.event_format**, %struct.event_format*** %6, align 8
  %38 = load %struct.pevent*, %struct.pevent** %4, align 8
  %39 = getelementptr inbounds %struct.pevent, %struct.pevent* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pevent*, %struct.pevent** %4, align 8
  %42 = getelementptr inbounds %struct.pevent, %struct.pevent* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 8, %44
  %46 = trunc i64 %45 to i32
  %47 = call i32 @memcpy(%struct.event_format** %37, i32 %40, i32 %46)
  %48 = load %struct.event_format**, %struct.event_format*** %6, align 8
  %49 = load %struct.pevent*, %struct.pevent** %4, align 8
  %50 = getelementptr inbounds %struct.pevent, %struct.pevent* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.event_format*, %struct.event_format** %48, i64 %52
  store %struct.event_format* null, %struct.event_format** %53, align 8
  %54 = load %struct.event_format**, %struct.event_format*** %6, align 8
  %55 = load %struct.pevent*, %struct.pevent** %4, align 8
  %56 = getelementptr inbounds %struct.pevent, %struct.pevent* %55, i32 0, i32 2
  store %struct.event_format** %54, %struct.event_format*** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = icmp eq i32 %57, 130
  br i1 %58, label %59, label %64

59:                                               ; preds = %36
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.pevent*, %struct.pevent** %4, align 8
  %62 = getelementptr inbounds %struct.pevent, %struct.pevent* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.event_format**, %struct.event_format*** %6, align 8
  store %struct.event_format** %63, %struct.event_format*** %3, align 8
  br label %84

64:                                               ; preds = %36
  br label %65

65:                                               ; preds = %64, %21
  %66 = load i32, i32* %5, align 4
  switch i32 %66, label %70 [
    i32 130, label %67
    i32 129, label %68
    i32 128, label %69
  ]

67:                                               ; preds = %65
  store i32 (i8*, i8*)* @events_id_cmp, i32 (i8*, i8*)** %7, align 8
  br label %72

68:                                               ; preds = %65
  store i32 (i8*, i8*)* @events_name_cmp, i32 (i8*, i8*)** %7, align 8
  br label %72

69:                                               ; preds = %65
  store i32 (i8*, i8*)* @events_system_cmp, i32 (i8*, i8*)** %7, align 8
  br label %72

70:                                               ; preds = %65
  %71 = load %struct.event_format**, %struct.event_format*** %6, align 8
  store %struct.event_format** %71, %struct.event_format*** %3, align 8
  br label %84

72:                                               ; preds = %69, %68, %67
  %73 = load %struct.event_format**, %struct.event_format*** %6, align 8
  %74 = load %struct.pevent*, %struct.pevent** %4, align 8
  %75 = getelementptr inbounds %struct.pevent, %struct.pevent* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %7, align 8
  %79 = call i32 @qsort(%struct.event_format** %73, i64 %77, i32 8, i32 (i8*, i8*)* %78)
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.pevent*, %struct.pevent** %4, align 8
  %82 = getelementptr inbounds %struct.pevent, %struct.pevent* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.event_format**, %struct.event_format*** %6, align 8
  store %struct.event_format** %83, %struct.event_format*** %3, align 8
  br label %84

84:                                               ; preds = %72, %70, %59, %35, %19
  %85 = load %struct.event_format**, %struct.event_format*** %3, align 8
  ret %struct.event_format** %85
}

declare dso_local %struct.event_format** @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.event_format**, i32, i32) #1

declare dso_local i32 @events_id_cmp(i8*, i8*) #1

declare dso_local i32 @events_name_cmp(i8*, i8*) #1

declare dso_local i32 @events_system_cmp(i8*, i8*) #1

declare dso_local i32 @qsort(%struct.event_format**, i64, i32, i32 (i8*, i8*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
