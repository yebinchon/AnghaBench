; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_object_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_object_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debug_class_type* }
%struct.debug_class_type = type { %struct.debug_type*, i32*, i32*, i32* }
%struct.debug_handle = type { i32 }

@DEBUG_KIND_CLASS = common dso_local global i32 0, align 4
@DEBUG_KIND_UNION_CLASS = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_make_object_type(i8* %0, i64 %1, i32 %2, i32* %3, i32* %4, i32* %5, %struct.debug_type* %6, i64 %7) #0 {
  %9 = alloca %struct.debug_type*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.debug_type*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.debug_handle*, align 8
  %19 = alloca %struct.debug_type*, align 8
  %20 = alloca %struct.debug_class_type*, align 8
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store %struct.debug_type* %6, %struct.debug_type** %16, align 8
  store i64 %7, i64* %17, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = bitcast i8* %21 to %struct.debug_handle*
  store %struct.debug_handle* %22, %struct.debug_handle** %18, align 8
  %23 = load %struct.debug_handle*, %struct.debug_handle** %18, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %8
  %27 = load i32, i32* @DEBUG_KIND_CLASS, align 4
  br label %30

28:                                               ; preds = %8
  %29 = load i32, i32* @DEBUG_KIND_UNION_CLASS, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load i32, i32* %12, align 4
  %33 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %23, i32 %31, i32 %32)
  store %struct.debug_type* %33, %struct.debug_type** %19, align 8
  %34 = load %struct.debug_type*, %struct.debug_type** %19, align 8
  %35 = icmp eq %struct.debug_type* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %37, %struct.debug_type** %9, align 8
  br label %68

38:                                               ; preds = %30
  %39 = call i64 @xmalloc(i32 32)
  %40 = inttoptr i64 %39 to %struct.debug_class_type*
  store %struct.debug_class_type* %40, %struct.debug_class_type** %20, align 8
  %41 = load %struct.debug_class_type*, %struct.debug_class_type** %20, align 8
  %42 = call i32 @memset(%struct.debug_class_type* %41, i32 0, i32 32)
  %43 = load i32*, i32** %13, align 8
  %44 = load %struct.debug_class_type*, %struct.debug_class_type** %20, align 8
  %45 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %44, i32 0, i32 3
  store i32* %43, i32** %45, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = load %struct.debug_class_type*, %struct.debug_class_type** %20, align 8
  %48 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load %struct.debug_class_type*, %struct.debug_class_type** %20, align 8
  %51 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %50, i32 0, i32 1
  store i32* %49, i32** %51, align 8
  %52 = load i64, i64* %17, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load %struct.debug_type*, %struct.debug_type** %19, align 8
  %56 = load %struct.debug_class_type*, %struct.debug_class_type** %20, align 8
  %57 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %56, i32 0, i32 0
  store %struct.debug_type* %55, %struct.debug_type** %57, align 8
  br label %62

58:                                               ; preds = %38
  %59 = load %struct.debug_type*, %struct.debug_type** %16, align 8
  %60 = load %struct.debug_class_type*, %struct.debug_class_type** %20, align 8
  %61 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %60, i32 0, i32 0
  store %struct.debug_type* %59, %struct.debug_type** %61, align 8
  br label %62

62:                                               ; preds = %58, %54
  %63 = load %struct.debug_class_type*, %struct.debug_class_type** %20, align 8
  %64 = load %struct.debug_type*, %struct.debug_type** %19, align 8
  %65 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store %struct.debug_class_type* %63, %struct.debug_class_type** %66, align 8
  %67 = load %struct.debug_type*, %struct.debug_type** %19, align 8
  store %struct.debug_type* %67, %struct.debug_type** %9, align 8
  br label %68

68:                                               ; preds = %62, %36
  %69 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  ret %struct.debug_type* %69
}

declare dso_local %struct.debug_type* @debug_make_type(%struct.debug_handle*, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_class_type*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
