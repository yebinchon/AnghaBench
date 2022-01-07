; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_struct_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_struct_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debug_class_type* }
%struct.debug_class_type = type { i32* }
%struct.debug_handle = type { i32 }

@DEBUG_KIND_STRUCT = common dso_local global i32 0, align 4
@DEBUG_KIND_UNION = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_make_struct_type(i8* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.debug_type*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.debug_handle*, align 8
  %11 = alloca %struct.debug_type*, align 8
  %12 = alloca %struct.debug_class_type*, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.debug_handle*
  store %struct.debug_handle* %14, %struct.debug_handle** %10, align 8
  %15 = load %struct.debug_handle*, %struct.debug_handle** %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @DEBUG_KIND_STRUCT, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @DEBUG_KIND_UNION, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %15, i32 %23, i32 %24)
  store %struct.debug_type* %25, %struct.debug_type** %11, align 8
  %26 = load %struct.debug_type*, %struct.debug_type** %11, align 8
  %27 = icmp eq %struct.debug_type* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %29, %struct.debug_type** %5, align 8
  br label %43

30:                                               ; preds = %22
  %31 = call i64 @xmalloc(i32 8)
  %32 = inttoptr i64 %31 to %struct.debug_class_type*
  store %struct.debug_class_type* %32, %struct.debug_class_type** %12, align 8
  %33 = load %struct.debug_class_type*, %struct.debug_class_type** %12, align 8
  %34 = call i32 @memset(%struct.debug_class_type* %33, i32 0, i32 8)
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.debug_class_type*, %struct.debug_class_type** %12, align 8
  %37 = getelementptr inbounds %struct.debug_class_type, %struct.debug_class_type* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.debug_class_type*, %struct.debug_class_type** %12, align 8
  %39 = load %struct.debug_type*, %struct.debug_type** %11, align 8
  %40 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.debug_class_type* %38, %struct.debug_class_type** %41, align 8
  %42 = load %struct.debug_type*, %struct.debug_type** %11, align 8
  store %struct.debug_type* %42, %struct.debug_type** %5, align 8
  br label %43

43:                                               ; preds = %30, %28
  %44 = load %struct.debug_type*, %struct.debug_type** %5, align 8
  ret %struct.debug_type* %44
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
