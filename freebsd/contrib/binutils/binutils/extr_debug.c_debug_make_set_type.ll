; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_set_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debug_set_type* }
%struct.debug_set_type = type { i32, %struct.debug_type* }
%struct.debug_handle = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8
@DEBUG_KIND_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_make_set_type(i8* %0, %struct.debug_type* %1, i32 %2) #0 {
  %4 = alloca %struct.debug_type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.debug_type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.debug_handle*, align 8
  %9 = alloca %struct.debug_type*, align 8
  %10 = alloca %struct.debug_set_type*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.debug_type* %1, %struct.debug_type** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.debug_handle*
  store %struct.debug_handle* %12, %struct.debug_handle** %8, align 8
  %13 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %14 = icmp eq %struct.debug_type* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %16, %struct.debug_type** %4, align 8
  br label %41

17:                                               ; preds = %3
  %18 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %19 = load i32, i32* @DEBUG_KIND_SET, align 4
  %20 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %18, i32 %19, i32 0)
  store %struct.debug_type* %20, %struct.debug_type** %9, align 8
  %21 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %22 = icmp eq %struct.debug_type* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %24, %struct.debug_type** %4, align 8
  br label %41

25:                                               ; preds = %17
  %26 = call i64 @xmalloc(i32 16)
  %27 = inttoptr i64 %26 to %struct.debug_set_type*
  store %struct.debug_set_type* %27, %struct.debug_set_type** %10, align 8
  %28 = load %struct.debug_set_type*, %struct.debug_set_type** %10, align 8
  %29 = call i32 @memset(%struct.debug_set_type* %28, i32 0, i32 16)
  %30 = load %struct.debug_type*, %struct.debug_type** %6, align 8
  %31 = load %struct.debug_set_type*, %struct.debug_set_type** %10, align 8
  %32 = getelementptr inbounds %struct.debug_set_type, %struct.debug_set_type* %31, i32 0, i32 1
  store %struct.debug_type* %30, %struct.debug_type** %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.debug_set_type*, %struct.debug_set_type** %10, align 8
  %35 = getelementptr inbounds %struct.debug_set_type, %struct.debug_set_type* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.debug_set_type*, %struct.debug_set_type** %10, align 8
  %37 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %38 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.debug_set_type* %36, %struct.debug_set_type** %39, align 8
  %40 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  store %struct.debug_type* %40, %struct.debug_type** %4, align 8
  br label %41

41:                                               ; preds = %25, %23, %15
  %42 = load %struct.debug_type*, %struct.debug_type** %4, align 8
  ret %struct.debug_type* %42
}

declare dso_local %struct.debug_type* @debug_make_type(%struct.debug_handle*, i32, i32) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @memset(%struct.debug_set_type*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
