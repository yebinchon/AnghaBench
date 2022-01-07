; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_find_tagged_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_find_tagged_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.debug_handle = type { %struct.debug_unit* }
%struct.debug_unit = type { %struct.debug_file*, %struct.debug_unit* }
%struct.debug_file = type { %struct.TYPE_6__*, %struct.debug_file* }
%struct.TYPE_6__ = type { %struct.debug_name* }
%struct.debug_name = type { i64, i8*, %struct.TYPE_7__, %struct.debug_name* }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@DEBUG_OBJECT_TAG = common dso_local global i64 0, align 8
@DEBUG_KIND_ILLEGAL = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @debug_find_tagged_type(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.debug_handle*, align 8
  %9 = alloca %struct.debug_unit*, align 8
  %10 = alloca %struct.debug_file*, align 8
  %11 = alloca %struct.debug_name*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.debug_handle*
  store %struct.debug_handle* %13, %struct.debug_handle** %8, align 8
  %14 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %15 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %14, i32 0, i32 0
  %16 = load %struct.debug_unit*, %struct.debug_unit** %15, align 8
  store %struct.debug_unit* %16, %struct.debug_unit** %9, align 8
  br label %17

17:                                               ; preds = %96, %3
  %18 = load %struct.debug_unit*, %struct.debug_unit** %9, align 8
  %19 = icmp ne %struct.debug_unit* %18, null
  br i1 %19, label %20, label %100

20:                                               ; preds = %17
  %21 = load %struct.debug_unit*, %struct.debug_unit** %9, align 8
  %22 = getelementptr inbounds %struct.debug_unit, %struct.debug_unit* %21, i32 0, i32 0
  %23 = load %struct.debug_file*, %struct.debug_file** %22, align 8
  store %struct.debug_file* %23, %struct.debug_file** %10, align 8
  br label %24

24:                                               ; preds = %91, %20
  %25 = load %struct.debug_file*, %struct.debug_file** %10, align 8
  %26 = icmp ne %struct.debug_file* %25, null
  br i1 %26, label %27, label %95

27:                                               ; preds = %24
  %28 = load %struct.debug_file*, %struct.debug_file** %10, align 8
  %29 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %90

32:                                               ; preds = %27
  %33 = load %struct.debug_file*, %struct.debug_file** %10, align 8
  %34 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.debug_name*, %struct.debug_name** %36, align 8
  store %struct.debug_name* %37, %struct.debug_name** %11, align 8
  br label %38

38:                                               ; preds = %85, %32
  %39 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %40 = icmp ne %struct.debug_name* %39, null
  br i1 %40, label %41, label %89

41:                                               ; preds = %38
  %42 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %43 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DEBUG_OBJECT_TAG, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %84

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @DEBUG_KIND_ILLEGAL, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %60, label %51

51:                                               ; preds = %47
  %52 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %53 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %51, %47
  %61 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %62 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %72, label %84

72:                                               ; preds = %60
  %73 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %74 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i64 @strcmp(i8* %75, i8* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %81 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %82, align 8
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %4, align 8
  br label %102

84:                                               ; preds = %72, %60, %51, %41
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %87 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %86, i32 0, i32 3
  %88 = load %struct.debug_name*, %struct.debug_name** %87, align 8
  store %struct.debug_name* %88, %struct.debug_name** %11, align 8
  br label %38

89:                                               ; preds = %38
  br label %90

90:                                               ; preds = %89, %27
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.debug_file*, %struct.debug_file** %10, align 8
  %93 = getelementptr inbounds %struct.debug_file, %struct.debug_file* %92, i32 0, i32 1
  %94 = load %struct.debug_file*, %struct.debug_file** %93, align 8
  store %struct.debug_file* %94, %struct.debug_file** %10, align 8
  br label %24

95:                                               ; preds = %24
  br label %96

96:                                               ; preds = %95
  %97 = load %struct.debug_unit*, %struct.debug_unit** %9, align 8
  %98 = getelementptr inbounds %struct.debug_unit, %struct.debug_unit* %97, i32 0, i32 1
  %99 = load %struct.debug_unit*, %struct.debug_unit** %98, align 8
  store %struct.debug_unit* %99, %struct.debug_unit** %9, align 8
  br label %17

100:                                              ; preds = %17
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** @DEBUG_TYPE_NULL, align 8
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %4, align 8
  br label %102

102:                                              ; preds = %100, %79
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %103
}

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
