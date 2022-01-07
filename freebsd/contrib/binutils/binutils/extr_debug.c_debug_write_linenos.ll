; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_linenos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_write_linenos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { i64, %struct.debug_lineno* }
%struct.debug_lineno = type { i64*, i64*, %struct.debug_lineno*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.debug_write_fns = type { i32 (i8*, i32, i64, i64)* }

@DEBUG_LINENO_COUNT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.debug_handle*, %struct.debug_write_fns*, i8*, i64)* @debug_write_linenos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_write_linenos(%struct.debug_handle* %0, %struct.debug_write_fns* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.debug_handle*, align 8
  %7 = alloca %struct.debug_write_fns*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.debug_lineno*, align 8
  store %struct.debug_handle* %0, %struct.debug_handle** %6, align 8
  store %struct.debug_write_fns* %1, %struct.debug_write_fns** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  br label %11

11:                                               ; preds = %85, %4
  %12 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %13 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %12, i32 0, i32 1
  %14 = load %struct.debug_lineno*, %struct.debug_lineno** %13, align 8
  %15 = icmp ne %struct.debug_lineno* %14, null
  br i1 %15, label %16, label %93

16:                                               ; preds = %11
  %17 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %18 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %17, i32 0, i32 1
  %19 = load %struct.debug_lineno*, %struct.debug_lineno** %18, align 8
  store %struct.debug_lineno* %19, %struct.debug_lineno** %10, align 8
  br label %20

20:                                               ; preds = %80, %16
  %21 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %22 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DEBUG_LINENO_COUNT, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %20
  %27 = load %struct.debug_lineno*, %struct.debug_lineno** %10, align 8
  %28 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %31 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i64, i64* %29, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %85

37:                                               ; preds = %26
  %38 = load %struct.debug_lineno*, %struct.debug_lineno** %10, align 8
  %39 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %42 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @TRUE, align 4
  store i32 %49, i32* %5, align 4
  br label %95

50:                                               ; preds = %37
  %51 = load %struct.debug_write_fns*, %struct.debug_write_fns** %7, align 8
  %52 = getelementptr inbounds %struct.debug_write_fns, %struct.debug_write_fns* %51, i32 0, i32 0
  %53 = load i32 (i8*, i32, i64, i64)*, i32 (i8*, i32, i64, i64)** %52, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.debug_lineno*, %struct.debug_lineno** %10, align 8
  %56 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.debug_lineno*, %struct.debug_lineno** %10, align 8
  %61 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %64 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.debug_lineno*, %struct.debug_lineno** %10, align 8
  %69 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %72 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds i64, i64* %70, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = call i32 %53(i8* %54, i32 %59, i64 %67, i64 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %50
  %79 = load i32, i32* @FALSE, align 4
  store i32 %79, i32* %5, align 4
  br label %95

80:                                               ; preds = %50
  %81 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %82 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %20

85:                                               ; preds = %36, %20
  %86 = load %struct.debug_lineno*, %struct.debug_lineno** %10, align 8
  %87 = getelementptr inbounds %struct.debug_lineno, %struct.debug_lineno* %86, i32 0, i32 2
  %88 = load %struct.debug_lineno*, %struct.debug_lineno** %87, align 8
  %89 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %90 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %89, i32 0, i32 1
  store %struct.debug_lineno* %88, %struct.debug_lineno** %90, align 8
  %91 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %92 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %91, i32 0, i32 0
  store i64 0, i64* %92, align 8
  br label %11

93:                                               ; preds = %11
  %94 = load i32, i32* @TRUE, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %78, %48
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
