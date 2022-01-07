; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_array_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_array_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debug_array_type* }
%struct.debug_array_type = type { i32, i8*, i8*, %struct.debug_type*, %struct.debug_type* }
%struct.debug_handle = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8
@DEBUG_KIND_ARRAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_make_array_type(i8* %0, %struct.debug_type* %1, %struct.debug_type* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca %struct.debug_type*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.debug_type*, align 8
  %10 = alloca %struct.debug_type*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.debug_handle*, align 8
  %15 = alloca %struct.debug_type*, align 8
  %16 = alloca %struct.debug_array_type*, align 8
  store i8* %0, i8** %8, align 8
  store %struct.debug_type* %1, %struct.debug_type** %9, align 8
  store %struct.debug_type* %2, %struct.debug_type** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.debug_handle*
  store %struct.debug_handle* %18, %struct.debug_handle** %14, align 8
  %19 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %20 = icmp eq %struct.debug_type* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %23 = icmp eq %struct.debug_type* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21, %6
  %25 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %25, %struct.debug_type** %7, align 8
  br label %59

26:                                               ; preds = %21
  %27 = load %struct.debug_handle*, %struct.debug_handle** %14, align 8
  %28 = load i32, i32* @DEBUG_KIND_ARRAY, align 4
  %29 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %27, i32 %28, i32 0)
  store %struct.debug_type* %29, %struct.debug_type** %15, align 8
  %30 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %31 = icmp eq %struct.debug_type* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %33, %struct.debug_type** %7, align 8
  br label %59

34:                                               ; preds = %26
  %35 = call i64 @xmalloc(i32 40)
  %36 = inttoptr i64 %35 to %struct.debug_array_type*
  store %struct.debug_array_type* %36, %struct.debug_array_type** %16, align 8
  %37 = load %struct.debug_array_type*, %struct.debug_array_type** %16, align 8
  %38 = call i32 @memset(%struct.debug_array_type* %37, i32 0, i32 40)
  %39 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %40 = load %struct.debug_array_type*, %struct.debug_array_type** %16, align 8
  %41 = getelementptr inbounds %struct.debug_array_type, %struct.debug_array_type* %40, i32 0, i32 4
  store %struct.debug_type* %39, %struct.debug_type** %41, align 8
  %42 = load %struct.debug_type*, %struct.debug_type** %10, align 8
  %43 = load %struct.debug_array_type*, %struct.debug_array_type** %16, align 8
  %44 = getelementptr inbounds %struct.debug_array_type, %struct.debug_array_type* %43, i32 0, i32 3
  store %struct.debug_type* %42, %struct.debug_type** %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.debug_array_type*, %struct.debug_array_type** %16, align 8
  %47 = getelementptr inbounds %struct.debug_array_type, %struct.debug_array_type* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.debug_array_type*, %struct.debug_array_type** %16, align 8
  %50 = getelementptr inbounds %struct.debug_array_type, %struct.debug_array_type* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.debug_array_type*, %struct.debug_array_type** %16, align 8
  %53 = getelementptr inbounds %struct.debug_array_type, %struct.debug_array_type* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.debug_array_type*, %struct.debug_array_type** %16, align 8
  %55 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  %56 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.debug_array_type* %54, %struct.debug_array_type** %57, align 8
  %58 = load %struct.debug_type*, %struct.debug_type** %15, align 8
  store %struct.debug_type* %58, %struct.debug_type** %7, align 8
  br label %59

59:                                               ; preds = %34, %32, %24
  %60 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  ret %struct.debug_type* %60
}

declare dso_local %struct.debug_type* @debug_make_type(%struct.debug_handle*, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_array_type*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
