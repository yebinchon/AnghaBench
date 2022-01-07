; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_get_base_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_get_base_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"___XVS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.type* @ada_get_base_type(%struct.type* %0) #0 {
  %2 = alloca %struct.type*, align 8
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.type*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %3, align 8
  %7 = load %struct.type*, %struct.type** %3, align 8
  %8 = icmp eq %struct.type* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.type*, %struct.type** %3, align 8
  %11 = call i64 @TYPE_CODE(%struct.type* %10)
  %12 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9, %1
  %15 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %15, %struct.type** %2, align 8
  br label %42

16:                                               ; preds = %9
  %17 = load %struct.type*, %struct.type** %3, align 8
  %18 = call %struct.type* @ada_find_parallel_type(%struct.type* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.type* %18, %struct.type** %4, align 8
  %19 = load %struct.type*, %struct.type** %4, align 8
  %20 = icmp eq %struct.type* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load %struct.type*, %struct.type** %4, align 8
  %23 = call i64 @TYPE_CODE(%struct.type* %22)
  %24 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.type*, %struct.type** %4, align 8
  %28 = call i32 @TYPE_NFIELDS(%struct.type* %27)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %21, %16
  %31 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %31, %struct.type** %2, align 8
  br label %42

32:                                               ; preds = %26
  %33 = load %struct.type*, %struct.type** %4, align 8
  %34 = call i32 @TYPE_FIELD_NAME(%struct.type* %33, i32 0)
  %35 = call %struct.type* @ada_find_any_type(i32 %34)
  store %struct.type* %35, %struct.type** %5, align 8
  %36 = load %struct.type*, %struct.type** %5, align 8
  %37 = icmp eq %struct.type* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %39, %struct.type** %2, align 8
  br label %42

40:                                               ; preds = %32
  %41 = load %struct.type*, %struct.type** %5, align 8
  store %struct.type* %41, %struct.type** %2, align 8
  br label %42

42:                                               ; preds = %40, %38, %30, %14
  %43 = load %struct.type*, %struct.type** %2, align 8
  ret %struct.type* %43
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @ada_find_parallel_type(%struct.type*, i8*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @ada_find_any_type(i32) #1

declare dso_local i32 @TYPE_FIELD_NAME(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
