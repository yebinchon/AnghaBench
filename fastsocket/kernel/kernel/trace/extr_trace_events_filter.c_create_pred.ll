; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_create_pred.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events_filter.c_create_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_pred = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.filter_pred* (i32, i8*, i8*)* @create_pred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.filter_pred* @create_pred(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.filter_pred*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.filter_pred*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.filter_pred* @kzalloc(i32 16, i32 %9)
  store %struct.filter_pred* %10, %struct.filter_pred** %8, align 8
  %11 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %12 = icmp ne %struct.filter_pred* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.filter_pred* null, %struct.filter_pred** %4, align 8
  br label %46

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32 @kstrdup(i8* %15, i32 %16)
  %18 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %19 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %21 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %14
  %25 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %26 = call i32 @kfree(%struct.filter_pred* %25)
  store %struct.filter_pred* null, %struct.filter_pred** %4, align 8
  br label %46

27:                                               ; preds = %14
  %28 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %29 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i8*, i8** %7, align 8
  %33 = call i32 @strcpy(i32 %31, i8* %32)
  %34 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %35 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strlen(i32 %37)
  %39 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %40 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  %44 = getelementptr inbounds %struct.filter_pred, %struct.filter_pred* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.filter_pred*, %struct.filter_pred** %8, align 8
  store %struct.filter_pred* %45, %struct.filter_pred** %4, align 8
  br label %46

46:                                               ; preds = %27, %24, %13
  %47 = load %struct.filter_pred*, %struct.filter_pred** %4, align 8
  ret %struct.filter_pred* %47
}

declare dso_local %struct.filter_pred* @kzalloc(i32, i32) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.filter_pred*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
