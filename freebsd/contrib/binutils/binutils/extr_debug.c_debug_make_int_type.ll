; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_int_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_debug.c_debug_make_int_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.debug_type = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.debug_handle = type { i32 }

@DEBUG_KIND_INT = common dso_local global i32 0, align 4
@DEBUG_TYPE_NULL = common dso_local global %struct.debug_type* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.debug_type* @debug_make_int_type(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.debug_type*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.debug_handle*, align 8
  %9 = alloca %struct.debug_type*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.debug_handle*
  store %struct.debug_handle* %11, %struct.debug_handle** %8, align 8
  %12 = load %struct.debug_handle*, %struct.debug_handle** %8, align 8
  %13 = load i32, i32* @DEBUG_KIND_INT, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.debug_type* @debug_make_type(%struct.debug_handle* %12, i32 %13, i32 %14)
  store %struct.debug_type* %15, %struct.debug_type** %9, align 8
  %16 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %17 = icmp eq %struct.debug_type* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load %struct.debug_type*, %struct.debug_type** @DEBUG_TYPE_NULL, align 8
  store %struct.debug_type* %19, %struct.debug_type** %4, align 8
  br label %26

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  %23 = getelementptr inbounds %struct.debug_type, %struct.debug_type* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.debug_type*, %struct.debug_type** %9, align 8
  store %struct.debug_type* %25, %struct.debug_type** %4, align 8
  br label %26

26:                                               ; preds = %20, %18
  %27 = load %struct.debug_type*, %struct.debug_type** %4, align 8
  ret %struct.debug_type* %27
}

declare dso_local %struct.debug_type* @debug_make_type(%struct.debug_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
