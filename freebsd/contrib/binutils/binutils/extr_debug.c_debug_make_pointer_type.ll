; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_pointer_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_pointer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { %struct.debug_type*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.debug_type* }
%struct.debug_handle = type { i32 }

@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8
@DEBUG_KIND_POINTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_make_pointer_type(i8* %0, %struct.debug_type* %1) #0 {
  %3 = alloca %struct.debug_type*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.debug_type*, align 8
  %6 = alloca %struct.debug_handle*, align 8
  %7 = alloca %struct.debug_type*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.debug_type* %1, %struct.debug_type** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.debug_handle*
  store %struct.debug_handle* %9, %struct.debug_handle** %6, align 8
  %10 = load %struct.debug_type*, %struct.debug_type** %5, align 8
  %11 = icmp eq %struct.debug_type* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %13, %struct.debug_type** %3, align 8
  br label %41

14:                                               ; preds = %2
  %15 = load %struct.debug_type*, %struct.debug_type** %5, align 8
  %16 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %15, i32 0, i32 0
  %17 = load %struct.debug_type*, %struct.debug_type** %16, align 8
  %18 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  %19 = icmp ne %struct.debug_type* %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.debug_type*, %struct.debug_type** %5, align 8
  %22 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %21, i32 0, i32 0
  %23 = load %struct.debug_type*, %struct.debug_type** %22, align 8
  store %struct.debug_type* %23, %struct.debug_type** %3, align 8
  br label %41

24:                                               ; preds = %14
  %25 = load %struct.debug_handle*, %struct.debug_handle** %6, align 8
  %26 = load i32, i32* @DEBUG_KIND_POINTER, align 4
  %27 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %25, i32 %26, i32 0)
  store %struct.debug_type* %27, %struct.debug_type** %7, align 8
  %28 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %29 = icmp eq %struct.debug_type* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %31, %struct.debug_type** %3, align 8
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.debug_type*, %struct.debug_type** %5, align 8
  %34 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %35 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store %struct.debug_type* %33, %struct.debug_type** %36, align 8
  %37 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  %38 = load %struct.debug_type*, %struct.debug_type** %5, align 8
  %39 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %38, i32 0, i32 0
  store %struct.debug_type* %37, %struct.debug_type** %39, align 8
  %40 = load %struct.debug_type*, %struct.debug_type** %7, align 8
  store %struct.debug_type* %40, %struct.debug_type** %3, align 8
  br label %41

41:                                               ; preds = %32, %30, %20, %12
  %42 = load %struct.debug_type*, %struct.debug_type** %3, align 8
  ret %struct.debug_type* %42
}

declare dso_local %struct.debug_type* @debug_make_type(%struct.debug_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
