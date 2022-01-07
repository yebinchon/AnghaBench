; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_match_preds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_match_preds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { i32, %struct.filter_pred** }
%struct.filter_pred = type { i32, i32 (%struct.filter_pred*, i8*, i32, i32)* }

@MAX_FILTER_PRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @filter_match_preds(%struct.event_filter* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_filter*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.filter_pred*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.event_filter* %0, %struct.event_filter** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @MAX_FILTER_PRED, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %83, %2
  %20 = load i32, i32* %13, align 4
  %21 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %22 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %86

25:                                               ; preds = %19
  %26 = load %struct.event_filter*, %struct.event_filter** %4, align 8
  %27 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %26, i32 0, i32 1
  %28 = load %struct.filter_pred**, %struct.filter_pred*** %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.filter_pred*, %struct.filter_pred** %28, i64 %30
  %32 = load %struct.filter_pred*, %struct.filter_pred** %31, align 8
  store %struct.filter_pred* %32, %struct.filter_pred** %12, align 8
  %33 = load %struct.filter_pred*, %struct.filter_pred** %12, align 8
  %34 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %25
  %38 = load %struct.filter_pred*, %struct.filter_pred** %12, align 8
  %39 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %38, i32 0, i32 1
  %40 = load i32 (%struct.filter_pred*, i8*, i32, i32)*, i32 (%struct.filter_pred*, i8*, i32, i32)** %39, align 8
  %41 = load %struct.filter_pred*, %struct.filter_pred** %12, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 %40(%struct.filter_pred* %41, i8* %42, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %18, i64 %49
  store i32 %46, i32* %50, align 4
  br label %83

51:                                               ; preds = %25
  %52 = load %struct.filter_pred*, %struct.filter_pred** %12, align 8
  %53 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %92

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %18, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %18, i64 %67
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %9, align 4
  %70 = load %struct.filter_pred*, %struct.filter_pred** %12, align 8
  %71 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %70, i32 0, i32 1
  %72 = load i32 (%struct.filter_pred*, i8*, i32, i32)*, i32 (%struct.filter_pred*, i8*, i32, i32)** %71, align 8
  %73 = load %struct.filter_pred*, %struct.filter_pred** %12, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 %72(%struct.filter_pred* %73, i8* %74, i32 %75, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %18, i64 %81
  store i32 %78, i32* %82, align 4
  br label %83

83:                                               ; preds = %59, %37
  %84 = load i32, i32* %13, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %13, align 4
  br label %19

86:                                               ; preds = %19
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %18, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %92

92:                                               ; preds = %86, %57
  %93 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WARN_ON_ONCE(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
