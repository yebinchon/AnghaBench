; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_method_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_method_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debug_method_type* }
%struct.debug_method_type = type { i32, %struct.debug_type**, %struct.debug_type*, %struct.debug_type* }
%struct.debug_handle = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8
@DEBUG_KIND_METHOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_make_method_type(i8* %0, %struct.debug_type* %1, %struct.debug_type* %2, %struct.debug_type** %3, i32 %4) #0 {
  %6 = alloca %struct.debug_type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.debug_type*, align 8
  %9 = alloca %struct.debug_type*, align 8
  %10 = alloca %struct.debug_type**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.debug_handle*, align 8
  %13 = alloca %struct.debug_type*, align 8
  %14 = alloca %struct.debug_method_type*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.debug_type* %1, %struct.debug_type** %8, align 8
  store %struct.debug_type* %2, %struct.debug_type** %9, align 8
  store %struct.debug_type** %3, %struct.debug_type*** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.debug_handle*
  store %struct.debug_handle* %16, %struct.debug_handle** %12, align 8
  %17 = load %struct.debug_type*, %struct.debug_type** %8, align 8
  %18 = icmp eq %struct.debug_type* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %20, %struct.debug_type** %6, align 8
  br label %51

21:                                               ; preds = %5
  %22 = load %struct.debug_handle*, %struct.debug_handle** %12, align 8
  %23 = load i32, i32* @DEBUG_KIND_METHOD, align 4
  %24 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %22, i32 %23, i32 0)
  store %struct.debug_type* %24, %struct.debug_type** %13, align 8
  %25 = load %struct.debug_type*, %struct.debug_type** %13, align 8
  %26 = icmp eq %struct.debug_type* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %28, %struct.debug_type** %6, align 8
  br label %51

29:                                               ; preds = %21
  %30 = call i64 @xmalloc(i32 32)
  %31 = inttoptr i64 %30 to %struct.debug_method_type*
  store %struct.debug_method_type* %31, %struct.debug_method_type** %14, align 8
  %32 = load %struct.debug_method_type*, %struct.debug_method_type** %14, align 8
  %33 = call i32 @memset(%struct.debug_method_type* %32, i32 0, i32 32)
  %34 = load %struct.debug_type*, %struct.debug_type** %8, align 8
  %35 = load %struct.debug_method_type*, %struct.debug_method_type** %14, align 8
  %36 = getelementptr inbounds %struct.debug_method_type, %struct.debug_method_type* %35, i32 0, i32 3
  store %struct.debug_type* %34, %struct.debug_type** %36, align 8
  %37 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %38 = load %struct.debug_method_type*, %struct.debug_method_type** %14, align 8
  %39 = getelementptr inbounds %struct.debug_method_type, %struct.debug_method_type* %38, i32 0, i32 2
  store %struct.debug_type* %37, %struct.debug_type** %39, align 8
  %40 = load %struct.debug_type**, %struct.debug_type*** %10, align 8
  %41 = load %struct.debug_method_type*, %struct.debug_method_type** %14, align 8
  %42 = getelementptr inbounds %struct.debug_method_type, %struct.debug_method_type* %41, i32 0, i32 1
  store %struct.debug_type** %40, %struct.debug_type*** %42, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.debug_method_type*, %struct.debug_method_type** %14, align 8
  %45 = getelementptr inbounds %struct.debug_method_type, %struct.debug_method_type* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.debug_method_type*, %struct.debug_method_type** %14, align 8
  %47 = load %struct.debug_type*, %struct.debug_type** %13, align 8
  %48 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store %struct.debug_method_type* %46, %struct.debug_method_type** %49, align 8
  %50 = load %struct.debug_type*, %struct.debug_type** %13, align 8
  store %struct.debug_type* %50, %struct.debug_type** %6, align 8
  br label %51

51:                                               ; preds = %29, %27, %19
  %52 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  ret %struct.debug_type* %52
}

declare dso_local %struct.debug_type* @debug_make_type(%struct.debug_handle*, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_method_type*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
