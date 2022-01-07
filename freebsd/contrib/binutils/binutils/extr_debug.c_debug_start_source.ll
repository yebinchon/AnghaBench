; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_start_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_start_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { %struct.debug_file*, %struct.TYPE_2__* }
%struct.debug_file = type { i8*, %struct.debug_file* }
%struct.TYPE_2__ = type { %struct.debug_file* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"debug_start_source: no debug_set_filename call\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @debug_start_source(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.debug_handle*, align 8
  %7 = alloca %struct.debug_file*, align 8
  %8 = alloca %struct.debug_file**, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.debug_handle*
  store %struct.debug_handle* %10, %struct.debug_handle** %6, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %14

14:                                               ; preds = %13, %2
  %15 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %16 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp eq %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @debug_error(i32 %20)
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %101

23:                                               ; preds = %14
  %24 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %25 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.debug_file*, %struct.debug_file** %27, align 8
  store %struct.debug_file* %28, %struct.debug_file** %7, align 8
  br label %29

29:                                               ; preds = %69, %23
  %30 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %31 = icmp ne %struct.debug_file* %30, null
  br i1 %31, label %32, label %73

32:                                               ; preds = %29
  %33 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %34 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 0
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %68

44:                                               ; preds = %32
  %45 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %46 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %50, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %44
  %57 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %58 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = call i64 @strcmp(i8* %59, i8* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %65 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %66 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %65, i32 0, i32 0
  store %struct.debug_file* %64, %struct.debug_file** %66, align 8
  %67 = load i32, i32* @TRUE, align 4
  store i32 %67, i32* %3, align 4
  br label %101

68:                                               ; preds = %56, %44, %32
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %71 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %70, i32 0, i32 1
  %72 = load %struct.debug_file*, %struct.debug_file** %71, align 8
  store %struct.debug_file* %72, %struct.debug_file** %7, align 8
  br label %29

73:                                               ; preds = %29
  %74 = call i64 @xmalloc(i32 16)
  %75 = inttoptr i64 %74 to %struct.debug_file*
  store %struct.debug_file* %75, %struct.debug_file** %7, align 8
  %76 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %77 = call i32 @memset(%struct.debug_file* %76, i32 0, i32 16)
  %78 = load i8*, i8** %5, align 8
  %79 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %80 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %82 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %81, i32 0, i32 0
  %83 = load %struct.debug_file*, %struct.debug_file** %82, align 8
  %84 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %83, i32 0, i32 1
  store %struct.debug_file** %84, %struct.debug_file*** %8, align 8
  br label %85

85:                                               ; preds = %90, %73
  %86 = load %struct.debug_file**, %struct.debug_file*** %8, align 8
  %87 = load %struct.debug_file*, %struct.debug_file** %86, align 8
  %88 = icmp ne %struct.debug_file* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %85
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.debug_file**, %struct.debug_file*** %8, align 8
  %92 = load %struct.debug_file*, %struct.debug_file** %91, align 8
  %93 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %92, i32 0, i32 1
  store %struct.debug_file** %93, %struct.debug_file*** %8, align 8
  br label %85

94:                                               ; preds = %85
  %95 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %96 = load %struct.debug_file**, %struct.debug_file*** %8, align 8
  store %struct.debug_file* %95, %struct.debug_file** %96, align 8
  %97 = load %struct.debug_file*, %struct.debug_file** %7, align 8
  %98 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %99 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %98, i32 0, i32 0
  store %struct.debug_file* %97, %struct.debug_file** %99, align 8
  %100 = load i32, i32* @TRUE, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %94, %63, %19
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_file*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
