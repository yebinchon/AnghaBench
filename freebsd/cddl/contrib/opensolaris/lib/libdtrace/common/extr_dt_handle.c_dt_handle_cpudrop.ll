; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_handle.c_dt_handle_cpudrop.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_handle.c_dt_handle_cpudrop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 (%struct.TYPE_8__*, i32)*, i32, i64 }
%struct.TYPE_8__ = type { i32, i8*, i64, i32, %struct.TYPE_7__* }

@DTRACEDROP_PRINCIPAL = common dso_local global i64 0, align 8
@DTRACEDROP_AGGREGATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%llu %sdrop%s on CPU %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"aggregation \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@EDT_DROPABORT = common dso_local global i32 0, align 4
@DTRACE_HANDLE_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_handle_cpudrop(%struct.TYPE_7__* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca [80 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @DTRACEDROP_PRINCIPAL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @DTRACEDROP_AGGREGATION, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %4
  %22 = phi i1 [ true, %4 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = call i32 @bzero(%struct.TYPE_8__* %10, i32 40)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 4
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  store i32 %28, i32* %29, align 8
  %30 = load i64, i64* %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i64 %30, i64* %31, align 8
  %32 = load i32, i32* %9, align 4
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  store i8* %34, i8** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %21
  %41 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %42 = load i64, i64* %8, align 8
  %43 = call i8* @dt_droptag(i64 %42)
  %44 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %41, i32 80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %43)
  %45 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %46 = call i64 @strlen(i8* %45)
  %47 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 %46
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sub i64 80, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  br label %57

55:                                               ; preds = %21
  %56 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  store i8* %56, i8** %12, align 8
  store i32 80, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %40
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @DTRACEDROP_PRINCIPAL, align 8
  %65 = icmp eq i64 %63, %64
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %68, 1
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %72 = load i32, i32* %7, align 4
  %73 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %58, i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %62, i8* %67, i8* %71, i32 %72)
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64 (%struct.TYPE_8__*, i32)*, i64 (%struct.TYPE_8__*, i32)** %75, align 8
  %77 = icmp eq i64 (%struct.TYPE_8__*, i32)* %76, null
  br i1 %77, label %78, label %82

78:                                               ; preds = %57
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %80 = load i32, i32* @EDT_DROPABORT, align 4
  %81 = call i32 @dt_set_errno(%struct.TYPE_7__* %79, i32 %80)
  store i32 %81, i32* %5, align 4
  br label %97

82:                                               ; preds = %57
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64 (%struct.TYPE_8__*, i32)*, i64 (%struct.TYPE_8__*, i32)** %84, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i64 %85(%struct.TYPE_8__* %10, i32 %88)
  %90 = load i64, i64* @DTRACE_HANDLE_ABORT, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %82
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %94 = load i32, i32* @EDT_DROPABORT, align 4
  %95 = call i32 @dt_set_errno(%struct.TYPE_7__* %93, i32 %94)
  store i32 %95, i32* %5, align 4
  br label %97

96:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %92, %78
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i8* @dt_droptag(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
