; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events.c_trace_define_field.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_events.c_trace_define_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_event_call = type { i32 }
%struct.ftrace_event_field = type { i32, i32, i32, i32, %struct.ftrace_event_field*, %struct.ftrace_event_field*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@FILTER_OTHER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_define_field(%struct.ftrace_event_call* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.ftrace_event_call*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ftrace_event_field*, align 8
  store %struct.ftrace_event_call* %0, %struct.ftrace_event_call** %9, align 8
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ftrace_event_field* @kzalloc(i32 40, i32 %17)
  store %struct.ftrace_event_field* %18, %struct.ftrace_event_field** %16, align 8
  %19 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %20 = icmp ne %struct.ftrace_event_field* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  br label %74

22:                                               ; preds = %7
  %23 = load i8*, i8** %11, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @kstrdup(i8* %23, i32 %24)
  %26 = bitcast i8* %25 to %struct.ftrace_event_field*
  %27 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %28 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %27, i32 0, i32 5
  store %struct.ftrace_event_field* %26, %struct.ftrace_event_field** %28, align 8
  %29 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %30 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %29, i32 0, i32 5
  %31 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %30, align 8
  %32 = icmp ne %struct.ftrace_event_field* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %22
  br label %74

34:                                               ; preds = %22
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i8* @kstrdup(i8* %35, i32 %36)
  %38 = bitcast i8* %37 to %struct.ftrace_event_field*
  %39 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %40 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %39, i32 0, i32 4
  store %struct.ftrace_event_field* %38, %struct.ftrace_event_field** %40, align 8
  %41 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %42 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %41, i32 0, i32 4
  %43 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %42, align 8
  %44 = icmp ne %struct.ftrace_event_field* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %74

46:                                               ; preds = %34
  %47 = load i32, i32* %15, align 4
  %48 = load i32, i32* @FILTER_OTHER, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i8*, i8** %10, align 8
  %52 = call i32 @filter_assign_type(i8* %51)
  %53 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %54 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %59

55:                                               ; preds = %46
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %58 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %50
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %62 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %65 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %68 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %70 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %69, i32 0, i32 6
  %71 = load %struct.ftrace_event_call*, %struct.ftrace_event_call** %9, align 8
  %72 = getelementptr inbounds %struct.ftrace_event_call, %struct.ftrace_event_call* %71, i32 0, i32 0
  %73 = call i32 @list_add(i32* %70, i32* %72)
  store i32 0, i32* %8, align 4
  br label %91

74:                                               ; preds = %45, %33, %21
  %75 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %76 = icmp ne %struct.ftrace_event_field* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %74
  %78 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %79 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %78, i32 0, i32 5
  %80 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %79, align 8
  %81 = call i32 @kfree(%struct.ftrace_event_field* %80)
  %82 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %83 = getelementptr inbounds %struct.ftrace_event_field, %struct.ftrace_event_field* %82, i32 0, i32 4
  %84 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %83, align 8
  %85 = call i32 @kfree(%struct.ftrace_event_field* %84)
  br label %86

86:                                               ; preds = %77, %74
  %87 = load %struct.ftrace_event_field*, %struct.ftrace_event_field** %16, align 8
  %88 = call i32 @kfree(%struct.ftrace_event_field* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %86, %59
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local %struct.ftrace_event_field* @kzalloc(i32, i32) #1

declare dso_local i8* @kstrdup(i8*, i32) #1

declare dso_local i32 @filter_assign_type(i8*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.ftrace_event_field*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
