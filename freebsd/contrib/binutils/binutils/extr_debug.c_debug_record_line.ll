; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_record_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_record_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { i64, %struct.debug_lineno*, %struct.TYPE_2__* }
%struct.debug_lineno = type { i64, i64*, %struct.debug_lineno*, i8** }
%struct.TYPE_2__ = type { %struct.debug_lineno* }

@.str = private unnamed_addr constant [35 x i8] c"debug_record_line: no current unit\00", align 1
@FALSE = common dso_local global i32 0, align 4
@DEBUG_LINENO_COUNT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_record_line(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.debug_handle*, align 8
  %9 = alloca %struct.debug_lineno*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.debug_handle*
  store %struct.debug_handle* %12, %struct.debug_handle** %8, align 8
  %13 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %14 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp eq %struct.TYPE_2__* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @debug_error(i32 %18)
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %4, align 4
  br label %126

21:                                               ; preds = %3
  %22 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %23 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %22, i32 0, i32 1
  %24 = load %struct.debug_lineno*, %struct.debug_lineno** %23, align 8
  store %struct.debug_lineno* %24, %struct.debug_lineno** %9, align 8
  %25 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %26 = icmp ne %struct.debug_lineno* %25, null
  br i1 %26, label %27, label %70

27:                                               ; preds = %21
  %28 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %29 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %32 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %30, %33
  br i1 %34, label %35, label %70

35:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %66, %35
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @DEBUG_LINENO_COUNT, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %36
  %41 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %42 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, -1
  br i1 %48, label %49, label %65

49:                                               ; preds = %40
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %52 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %50, i64* %56, align 8
  %57 = load i8*, i8** %7, align 8
  %58 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %59 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %58, i32 0, i32 3
  %60 = load i8**, i8*** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %60, i64 %62
  store i8* %57, i8** %63, align 8
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %4, align 4
  br label %126

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %36

69:                                               ; preds = %36
  br label %70

70:                                               ; preds = %69, %27, %21
  %71 = call i64 @xmalloc(i32 32)
  %72 = inttoptr i64 %71 to %struct.debug_lineno*
  store %struct.debug_lineno* %72, %struct.debug_lineno** %9, align 8
  %73 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %74 = call i32 @memset(%struct.debug_lineno* %73, i32 0, i32 32)
  %75 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %76 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %79 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %82 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  store i64 %80, i64* %84, align 8
  %85 = load i8*, i8** %7, align 8
  %86 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %87 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %86, i32 0, i32 3
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  store i8* %85, i8** %89, align 8
  store i32 1, i32* %10, align 4
  br label %90

90:                                               ; preds = %101, %70
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @DEBUG_LINENO_COUNT, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %90
  %95 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %96 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %95, i32 0, i32 1
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 -1, i64* %100, align 8
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %90

104:                                              ; preds = %90
  %105 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %106 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %105, i32 0, i32 1
  %107 = load %struct.debug_lineno*, %struct.debug_lineno** %106, align 8
  %108 = icmp ne %struct.debug_lineno* %107, null
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %111 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %112 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %111, i32 0, i32 1
  %113 = load %struct.debug_lineno*, %struct.debug_lineno** %112, align 8
  %114 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %113, i32 0, i32 2
  store %struct.debug_lineno* %110, %struct.debug_lineno** %114, align 8
  br label %121

115:                                              ; preds = %104
  %116 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %117 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %118 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  store %struct.debug_lineno* %116, %struct.debug_lineno** %120, align 8
  br label %121

121:                                              ; preds = %115, %109
  %122 = load %struct.debug_lineno*, %struct.debug_lineno** %9, align 8
  %123 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %124 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %123, i32 0, i32 1
  store %struct.debug_lineno* %122, %struct.debug_lineno** %124, align 8
  %125 = load i32, i32* @TRUE, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %121, %49, %17
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_lineno*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
