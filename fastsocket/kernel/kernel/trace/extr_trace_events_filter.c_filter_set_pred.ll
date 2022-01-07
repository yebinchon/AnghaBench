; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_set_pred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_filter_set_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_pred = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filter_pred*, %struct.filter_pred*, i32)* @filter_set_pred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_set_pred(%struct.filter_pred* %0, %struct.filter_pred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.filter_pred*, align 8
  %6 = alloca %struct.filter_pred*, align 8
  %7 = alloca i32, align 4
  store %struct.filter_pred* %0, %struct.filter_pred** %5, align 8
  store %struct.filter_pred* %1, %struct.filter_pred** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.filter_pred*, %struct.filter_pred** %5, align 8
  %9 = load %struct.filter_pred*, %struct.filter_pred** %6, align 8
  %10 = bitcast %struct.filter_pred* %8 to i8*
  %11 = bitcast %struct.filter_pred* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 16, i1 false)
  %12 = load %struct.filter_pred*, %struct.filter_pred** %6, align 8
  %13 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.filter_pred*, %struct.filter_pred** %6, align 8
  %18 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i64 @kstrdup(i64 %19, i32 %20)
  %22 = load %struct.filter_pred*, %struct.filter_pred** %5, align 8
  %23 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.filter_pred*, %struct.filter_pred** %5, align 8
  %25 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %16
  br label %32

32:                                               ; preds = %31, %3
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.filter_pred*, %struct.filter_pred** %5, align 8
  %35 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @kstrdup(i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
