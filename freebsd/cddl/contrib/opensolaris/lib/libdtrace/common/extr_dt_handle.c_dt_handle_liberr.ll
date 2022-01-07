; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_handle.c_dt_handle_liberr.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libdtrace/common/extr_dt_handle.c_dt_handle_liberr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 (%struct.TYPE_14__*, i32)*, i32 }
%struct.TYPE_14__ = type { i32, i32, i8*, i64, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_11__* }

@DTRACEFLT_LIBRARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"error on enabled probe ID %u (ID %u: %s:%s:%s:%s): %s\0A\00", align 1
@EDT_ERRABORT = common dso_local global i32 0, align 4
@DTRACE_HANDLE_ABORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dt_handle_liberr(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %8, align 8
  store i32 80, i32* %10, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 7
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %19, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 6
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %21, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i32 -1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load i32, i32* @DTRACEFLT_LIBRARY, align 4
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @strlen(i8* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strlen(i8* %35)
  %37 = add nsw i32 %32, %36
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @strlen(i8* %40)
  %42 = add nsw i32 %37, %41
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = add nsw i32 %42, %46
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 3
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = add nsw i32 %47, %51
  %53 = add nsw i32 %52, 80
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i8* @alloca(i32 %54)
  store i8* %55, i8** %11, align 8
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  %77 = load i8*, i8** %76, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @snprintf(i8* %56, i32 %57, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65, i8* %68, i8* %71, i8* %74, i8* %77, i8* %78)
  %80 = load i8*, i8** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  store i8* %80, i8** %81, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i64 (%struct.TYPE_14__*, i32)*, i64 (%struct.TYPE_14__*, i32)** %83, align 8
  %85 = icmp eq i64 (%struct.TYPE_14__*, i32)* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %3
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %88 = load i32, i32* @EDT_ERRABORT, align 4
  %89 = call i32 @dt_set_errno(%struct.TYPE_13__* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  br label %105

90:                                               ; preds = %3
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i64 (%struct.TYPE_14__*, i32)*, i64 (%struct.TYPE_14__*, i32)** %92, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 %93(%struct.TYPE_14__* %9, i32 %96)
  %98 = load i64, i64* @DTRACE_HANDLE_ABORT, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %102 = load i32, i32* @EDT_ERRABORT, align 4
  %103 = call i32 @dt_set_errno(%struct.TYPE_13__* %101, i32 %102)
  store i32 %103, i32* %4, align 4
  br label %105

104:                                              ; preds = %90
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %104, %100, %86
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @alloca(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @dt_set_errno(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
