; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_tag_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_tag_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.debug_named_type* }
%struct.debug_named_type = type { %struct.debug_name*, %struct.debug_type* }
%struct.debug_name = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.debug_type* }
%struct.debug_handle = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"debug_tag_type: no current file\00", align 1
@DEBUG_KIND_TAGGED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"debug_tag_type: extra tag attempted\00", align 1
@DEBUG_OBJECT_TAG = common dso_local global i32 0, align 4
@DEBUG_LINKAGE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_tag_type(i8* %0, i8* %1, %struct.debug_type* %2) #0 {
  %4 = alloca %struct.debug_type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.debug_type*, align 8
  %8 = alloca %struct.debug_handle*, align 8
  %9 = alloca %struct.debug_type*, align 8
  %10 = alloca %struct.debug_named_type*, align 8
  %11 = alloca %struct.debug_name*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.debug_type* %2, %struct.debug_type** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.debug_handle*
  store %struct.debug_handle* %13, %struct.debug_handle** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %18 = icmp eq %struct.debug_type* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %3
  %20 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %20, %struct.debug_type** %4, align 8
  br label %96

21:                                               ; preds = %16
  %22 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %23 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = icmp eq %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @debug_error(i32 %27)
  %29 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %29, %struct.debug_type** %4, align 8
  br label %96

30:                                               ; preds = %21
  %31 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %32 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DEBUG_KIND_TAGGED, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %54

36:                                               ; preds = %30
  %37 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %38 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.debug_named_type*, %struct.debug_named_type** %39, align 8
  %41 = getelementptr inbounds %struct.debug_named_type, %struct.debug_named_type* %40, i32 0, i32 0
  %42 = load %struct.debug_name*, %struct.debug_name** %41, align 8
  %43 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @strcmp(i32 %44, i8* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  store %struct.debug_type* %49, %struct.debug_type** %4, align 8
  br label %96

50:                                               ; preds = %36
  %51 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %52 = call i32 @debug_error(i32 %51)
  %53 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %53, %struct.debug_type** %4, align 8
  br label %96

54:                                               ; preds = %30
  %55 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %56 = load i64, i64* @DEBUG_KIND_TAGGED, align 8
  %57 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %55, i64 %56, i32 0)
  store %struct.debug_type* %57, %struct.debug_type** %9, align 8
  %58 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %59 = icmp eq %struct.debug_type* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %61, %struct.debug_type** %4, align 8
  br label %96

62:                                               ; preds = %54
  %63 = call i64 @xmalloc(i32 16)
  %64 = inttoptr i64 %63 to %struct.debug_named_type*
  store %struct.debug_named_type* %64, %struct.debug_named_type** %10, align 8
  %65 = load %struct.debug_named_type*, %struct.debug_named_type** %10, align 8
  %66 = call i32 @memset(%struct.debug_named_type* %65, i32 0, i32 16)
  %67 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %68 = load %struct.debug_named_type*, %struct.debug_named_type** %10, align 8
  %69 = getelementptr inbounds %struct.debug_named_type, %struct.debug_named_type* %68, i32 0, i32 1
  store %struct.debug_type* %67, %struct.debug_type** %69, align 8
  %70 = load %struct.debug_named_type*, %struct.debug_named_type** %10, align 8
  %71 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %72 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store %struct.debug_named_type* %70, %struct.debug_named_type** %73, align 8
  %74 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %75 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %76 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i8*, i8** %6, align 8
  %80 = load i32, i32* @DEBUG_OBJECT_TAG, align 4
  %81 = load i32, i32* @DEBUG_LINKAGE_NONE, align 4
  %82 = call %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle* %74, i32* %78, i8* %79, i32 %80, i32 %81)
  store %struct.debug_name* %82, %struct.debug_name** %11, align 8
  %83 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %84 = icmp eq %struct.debug_name* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %62
  %86 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %86, %struct.debug_type** %4, align 8
  br label %96

87:                                               ; preds = %62
  %88 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %89 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %90 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  store %struct.debug_type* %88, %struct.debug_type** %91, align 8
  %92 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %93 = load %struct.debug_named_type*, %struct.debug_named_type** %10, align 8
  %94 = getelementptr inbounds %struct.debug_named_type, %struct.debug_named_type* %93, i32 0, i32 0
  store %struct.debug_name* %92, %struct.debug_name** %94, align 8
  %95 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  store %struct.debug_type* %95, %struct.debug_type** %4, align 8
  br label %96

96:                                               ; preds = %87, %85, %60, %50, %48, %26, %19
  %97 = load %struct.debug_type*, %struct.debug_type** %4, align 8
  ret %struct.debug_type* %97
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local %struct.debug_type* @debug_make_type(%struct.debug_handle*, i64, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_named_type*, i32, i32) #1

declare dso_local %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
