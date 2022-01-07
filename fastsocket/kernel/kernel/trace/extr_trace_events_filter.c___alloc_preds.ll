; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c___alloc_preds.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c___alloc_preds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_filter = type { %struct.filter_pred**, i64 }
%struct.filter_pred = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_FILTER_PRED = common dso_local global i32 0, align 4
@filter_pred_none = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_filter* ()* @__alloc_preds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_filter* @__alloc_preds() #0 {
  %1 = alloca %struct.event_filter*, align 8
  %2 = alloca %struct.event_filter*, align 8
  %3 = alloca %struct.filter_pred*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 16, i32 %5)
  %7 = bitcast i8* %6 to %struct.event_filter*
  store %struct.event_filter* %7, %struct.event_filter** %2, align 8
  %8 = load %struct.event_filter*, %struct.event_filter** %2, align 8
  %9 = icmp ne %struct.event_filter* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.event_filter* @ERR_PTR(i32 %12)
  store %struct.event_filter* %13, %struct.event_filter** %1, align 8
  br label %65

14:                                               ; preds = %0
  %15 = load %struct.event_filter*, %struct.event_filter** %2, align 8
  %16 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %15, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* @MAX_FILTER_PRED, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kzalloc(i32 %20, i32 %21)
  %23 = bitcast i8* %22 to %struct.filter_pred**
  %24 = load %struct.event_filter*, %struct.event_filter** %2, align 8
  %25 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %24, i32 0, i32 0
  store %struct.filter_pred** %23, %struct.filter_pred*** %25, align 8
  %26 = load %struct.event_filter*, %struct.event_filter** %2, align 8
  %27 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %26, i32 0, i32 0
  %28 = load %struct.filter_pred**, %struct.filter_pred*** %27, align 8
  %29 = icmp ne %struct.filter_pred** %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %14
  br label %59

31:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %54, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @MAX_FILTER_PRED, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %32
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 4, i32 %37)
  %39 = bitcast i8* %38 to %struct.filter_pred*
  store %struct.filter_pred* %39, %struct.filter_pred** %3, align 8
  %40 = load %struct.filter_pred*, %struct.filter_pred** %3, align 8
  %41 = icmp ne %struct.filter_pred* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %36
  br label %59

43:                                               ; preds = %36
  %44 = load i32, i32* @filter_pred_none, align 4
  %45 = load %struct.filter_pred*, %struct.filter_pred** %3, align 8
  %46 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.filter_pred*, %struct.filter_pred** %3, align 8
  %48 = load %struct.event_filter*, %struct.event_filter** %2, align 8
  %49 = getelementptr inbounds %struct.event_filter, %struct.event_filter* %48, i32 0, i32 0
  %50 = load %struct.filter_pred**, %struct.filter_pred*** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.filter_pred*, %struct.filter_pred** %50, i64 %52
  store %struct.filter_pred* %47, %struct.filter_pred** %53, align 8
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %32

57:                                               ; preds = %32
  %58 = load %struct.event_filter*, %struct.event_filter** %2, align 8
  store %struct.event_filter* %58, %struct.event_filter** %1, align 8
  br label %65

59:                                               ; preds = %42, %30
  %60 = load %struct.event_filter*, %struct.event_filter** %2, align 8
  %61 = call i32 @__free_preds(%struct.event_filter* %60)
  %62 = load i32, i32* @ENOMEM, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.event_filter* @ERR_PTR(i32 %63)
  store %struct.event_filter* %64, %struct.event_filter** %1, align 8
  br label %65

65:                                               ; preds = %59, %57, %10
  %66 = load %struct.event_filter*, %struct.event_filter** %1, align 8
  ret %struct.event_filter* %66
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.event_filter* @ERR_PTR(i32) #1

declare dso_local i32 @__free_preds(%struct.event_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
