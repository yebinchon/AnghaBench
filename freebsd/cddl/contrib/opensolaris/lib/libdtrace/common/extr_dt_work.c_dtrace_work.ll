; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_work.c_dtrace_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_work.c_dtrace_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i32, i32 }

@DTRACEOPT_BUFPOLICY = common dso_local global i64 0, align 8
@DTRACE_WORKSTATUS_DONE = common dso_local global i64 0, align 8
@DTRACE_WORKSTATUS_OKAY = common dso_local global i64 0, align 8
@DTRACE_WORKSTATUS_ERROR = common dso_local global i64 0, align 8
@DTRACEOPT_BUFPOLICY_SWITCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @dtrace_work(%struct.TYPE_6__* %0, i32* %1, i32* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %16 = call i32 @dtrace_status(%struct.TYPE_6__* %15)
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @DTRACEOPT_BUFPOLICY, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %13, align 8
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %34 [
    i32 132, label %24
    i32 131, label %24
    i32 128, label %24
    i32 130, label %30
    i32 129, label %30
    i32 -1, label %32
  ]

24:                                               ; preds = %5, %5, %5
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 0, i32* %28, align 8
  %29 = load i64, i64* @DTRACE_WORKSTATUS_DONE, align 8
  store i64 %29, i64* %14, align 8
  br label %34

30:                                               ; preds = %5, %5
  %31 = load i64, i64* @DTRACE_WORKSTATUS_OKAY, align 8
  store i64 %31, i64* %14, align 8
  br label %34

32:                                               ; preds = %5
  %33 = load i64, i64* @DTRACE_WORKSTATUS_ERROR, align 8
  store i64 %33, i64* %6, align 8
  br label %69

34:                                               ; preds = %5, %30, %24
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 130
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 129
  br i1 %39, label %40, label %51

40:                                               ; preds = %37, %34
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @DTRACEOPT_BUFPOLICY_SWITCH, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @DTRACE_WORKSTATUS_OKAY, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load i64, i64* %14, align 8
  store i64 %50, i64* %6, align 8
  br label %69

51:                                               ; preds = %40, %37
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %53 = call i32 @dtrace_aggregate_snap(%struct.TYPE_6__* %52)
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @DTRACE_WORKSTATUS_ERROR, align 8
  store i64 %56, i64* %6, align 8
  br label %69

57:                                               ; preds = %51
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i8*, i8** %11, align 8
  %63 = call i32 @dtrace_consume(%struct.TYPE_6__* %58, i32* %59, i32* %60, i32* %61, i8* %62)
  %64 = icmp eq i32 %63, -1
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i64, i64* @DTRACE_WORKSTATUS_ERROR, align 8
  store i64 %66, i64* %6, align 8
  br label %69

67:                                               ; preds = %57
  %68 = load i64, i64* %14, align 8
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %67, %65, %55, %44, %32
  %70 = load i64, i64* %6, align 8
  ret i64 %70
}

declare dso_local i32 @dtrace_status(%struct.TYPE_6__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @dtrace_aggregate_snap(%struct.TYPE_6__*) #1

declare dso_local i32 @dtrace_consume(%struct.TYPE_6__*, i32*, i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
