; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_name_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_name_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.debug_named_type* }
%struct.debug_named_type = type { %struct.debug_name*, %struct.debug_type* }
%struct.debug_name = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.debug_type* }
%struct.debug_handle = type { %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8
@.str = private unnamed_addr constant [33 x i8] c"debug_name_type: no current file\00", align 1
@DEBUG_KIND_NAMED = common dso_local global i32 0, align 4
@DEBUG_OBJECT_TYPE = common dso_local global i32 0, align 4
@DEBUG_LINKAGE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_name_type(i8* %0, i8* %1, %struct.debug_type* %2) #0 {
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
  br label %77

21:                                               ; preds = %16
  %22 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %23 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %28 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = icmp eq %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %21
  %32 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %33 = call i32 @debug_error(i32 %32)
  %34 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %34, %struct.debug_type** %4, align 8
  br label %77

35:                                               ; preds = %26
  %36 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %37 = load i32, i32* @DEBUG_KIND_NAMED, align 4
  %38 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %36, i32 %37, i32 0)
  store %struct.debug_type* %38, %struct.debug_type** %9, align 8
  %39 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %40 = icmp eq %struct.debug_type* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %42, %struct.debug_type** %4, align 8
  br label %77

43:                                               ; preds = %35
  %44 = call i64 @xmalloc(i32 16)
  %45 = inttoptr i64 %44 to %struct.debug_named_type*
  store %struct.debug_named_type* %45, %struct.debug_named_type** %10, align 8
  %46 = load %struct.debug_named_type*, %struct.debug_named_type** %10, align 8
  %47 = call i32 @memset(%struct.debug_named_type* %46, i32 0, i32 16)
  %48 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %49 = load %struct.debug_named_type*, %struct.debug_named_type** %10, align 8
  %50 = getelementptr inbounds %struct.debug_named_type, %struct.debug_named_type* %49, i32 0, i32 1
  store %struct.debug_type* %48, %struct.debug_type** %50, align 8
  %51 = load %struct.debug_named_type*, %struct.debug_named_type** %10, align 8
  %52 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %53 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store %struct.debug_named_type* %51, %struct.debug_named_type** %54, align 8
  %55 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %56 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %57 = getelementptr inbounds %struct.debug_handle, %struct.debug_handle* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* @DEBUG_OBJECT_TYPE, align 4
  %62 = load i32, i32* @DEBUG_LINKAGE_NONE, align 4
  %63 = call %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle* %55, i32* %59, i8* %60, i32 %61, i32 %62)
  store %struct.debug_name* %63, %struct.debug_name** %11, align 8
  %64 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %65 = icmp eq %struct.debug_name* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %43
  %67 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %67, %struct.debug_type** %4, align 8
  br label %77

68:                                               ; preds = %43
  %69 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %70 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %71 = getelementptr inbounds %struct.debug_name, %struct.debug_name* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store %struct.debug_type* %69, %struct.debug_type** %72, align 8
  %73 = load %struct.debug_name*, %struct.debug_name** %11, align 8
  %74 = load %struct.debug_named_type*, %struct.debug_named_type** %10, align 8
  %75 = getelementptr inbounds %struct.debug_named_type, %struct.debug_named_type* %74, i32 0, i32 0
  store %struct.debug_name* %73, %struct.debug_name** %75, align 8
  %76 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  store %struct.debug_type* %76, %struct.debug_type** %4, align 8
  br label %77

77:                                               ; preds = %68, %66, %41, %31, %19
  %78 = load %struct.debug_type*, %struct.debug_type** %4, align 8
  ret %struct.debug_type* %78
}

declare dso_local i32 @debug_error(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.debug_type* @debug_make_type(%struct.debug_handle*, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_named_type*, i32, i32) #1

declare dso_local %struct.debug_name* @debug_add_to_namespace(%struct.debug_handle*, i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
