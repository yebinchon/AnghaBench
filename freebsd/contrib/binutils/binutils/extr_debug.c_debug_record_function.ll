; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_record_function.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_record_function.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_handle = type { %struct.TYPE_3__*, %struct.debug_function*, %struct.debug_function*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.debug_function = type { %struct.debug_function*, i8*, i8*, i32* }
%struct.debug_block = type { %struct.debug_block*, i8*, i8*, i32* }
%struct.debug_name = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.debug_function* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"debug_record_function: no debug_set_filename call\00", align 1
@DEBUG_OBJECT_FUNCTION = common dso_local global i32 0, align 4
@DEBUG_LINKAGE_GLOBAL = common dso_local global i32 0, align 4
@DEBUG_LINKAGE_STATIC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @debug_record_function(i8* %0, i8* %1, i32* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.debug_handle*, align 8
  %13 = alloca %struct.debug_function*, align 8
  %14 = alloca %struct.debug_block*, align 8
  %15 = alloca %struct.debug_name*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.debug_handle*
  store %struct.debug_handle* %17, %struct.debug_handle** %12, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %21

21:                                               ; preds = %20, %5
  %22 = load i32*, i32** %9, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %6, align 8
  br label %90

26:                                               ; preds = %21
  %27 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %28 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i32 @debug_error(i32 %32)
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %6, align 8
  br label %90

35:                                               ; preds = %26
  %36 = call i64 @xmalloc(i32 32)
  %37 = inttoptr i64 %36 to %struct.debug_function*
  store %struct.debug_function* %37, %struct.debug_function** %13, align 8
  %38 = load %struct.debug_function*, %struct.debug_function** %13, align 8
  %39 = call i32 @memset(%struct.debug_function* %38, i32 0, i32 32)
  %40 = load i32*, i32** %9, align 8
  %41 = load %struct.debug_function*, %struct.debug_function** %13, align 8
  %42 = getelementptr inbounds %struct.debug_function, %struct.debug_function* %41, i32 0, i32 3
  store i32* %40, i32** %42, align 8
  %43 = call i64 @xmalloc(i32 32)
  %44 = inttoptr i64 %43 to %struct.debug_block*
  store %struct.debug_block* %44, %struct.debug_block** %14, align 8
  %45 = load %struct.debug_block*, %struct.debug_block** %14, align 8
  %46 = bitcast %struct.debug_block* %45 to %struct.debug_function*
  %47 = call i32 @memset(%struct.debug_function* %46, i32 0, i32 32)
  %48 = load i8*, i8** %11, align 8
  %49 = load %struct.debug_block*, %struct.debug_block** %14, align 8
  %50 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.debug_block*, %struct.debug_block** %14, align 8
  %52 = getelementptr inbounds %struct.debug_block, %struct.debug_block* %51, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %52, align 8
  %53 = load %struct.debug_block*, %struct.debug_block** %14, align 8
  %54 = bitcast %struct.debug_block* %53 to %struct.debug_function*
  %55 = load %struct.debug_function*, %struct.debug_function** %13, align 8
  %56 = getelementptr inbounds %struct.debug_function, %struct.debug_function* %55, i32 0, i32 0
  store %struct.debug_function* %54, %struct.debug_function** %56, align 8
  %57 = load %struct.debug_function*, %struct.debug_function** %13, align 8
  %58 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %59 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %58, i32 0, i32 2
  store %struct.debug_function* %57, %struct.debug_function** %59, align 8
  %60 = load %struct.debug_block*, %struct.debug_block** %14, align 8
  %61 = bitcast %struct.debug_block* %60 to %struct.debug_function*
  %62 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %63 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %62, i32 0, i32 1
  store %struct.debug_function* %61, %struct.debug_function** %63, align 8
  %64 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %65 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %66 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* @DEBUG_OBJECT_FUNCTION, align 4
  %71 = load i64, i64* %10, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %35
  %74 = load i32, i32* @DEBUG_LINKAGE_GLOBAL, align 4
  br label %77

75:                                               ; preds = %35
  %76 = load i32, i32* @DEBUG_LINKAGE_STATIC, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  %79 = call %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle* %64, i32* %68, i8* %69, i32 %70, i32 %78)
  store %struct.debug_name* %79, %struct.debug_name** %15, align 8
  %80 = load %struct.debug_name*, %struct.debug_name** %15, align 8
  %81 = icmp eq %struct.debug_name* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i64, i64* @FALSE, align 8
  store i64 %83, i64* %6, align 8
  br label %90

84:                                               ; preds = %77
  %85 = load %struct.debug_function*, %struct.debug_function** %13, align 8
  %86 = load %struct.debug_name*, %struct.debug_name** %15, align 8
  %87 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store %struct.debug_function* %85, %struct.debug_function** %88, align 8
  %89 = load i64, i64* @TRUE, align 8
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %84, %82, %31, %24
  %91 = load i64, i64* %6, align 8
  ret i64 %91
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_function*, i32, i32) #1

declare dso_local %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
