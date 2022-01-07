; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-typeprint.c_print_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@builtin_type_ada_int = common dso_local global %struct.type* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"%.*s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" .. \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.type*, %struct.ui_file*)* @print_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_range(%struct.type* %0, %struct.ui_file* %1) #0 {
  %3 = alloca %struct.type*, align 8
  %4 = alloca %struct.ui_file*, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %3, align 8
  store %struct.ui_file* %1, %struct.ui_file** %4, align 8
  %8 = load %struct.type*, %struct.type** %3, align 8
  %9 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %8)
  store %struct.type* %9, %struct.type** %5, align 8
  %10 = load %struct.type*, %struct.type** %5, align 8
  %11 = icmp eq %struct.type* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.type*, %struct.type** %3, align 8
  store %struct.type* %13, %struct.type** %5, align 8
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.type*, %struct.type** %5, align 8
  %16 = call i32 @TYPE_CODE(%struct.type* %15)
  switch i32 %16, label %18 [
    i32 128, label %17
    i32 129, label %17
    i32 132, label %17
    i32 131, label %17
    i32 130, label %17
  ]

17:                                               ; preds = %14, %14, %14, %14, %14
  br label %20

18:                                               ; preds = %14
  %19 = load %struct.type*, %struct.type** @builtin_type_ada_int, align 8
  store %struct.type* %19, %struct.type** %5, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = load %struct.type*, %struct.type** %3, align 8
  %22 = call i32 @TYPE_NFIELDS(%struct.type* %21)
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %26 = load %struct.type*, %struct.type** %3, align 8
  %27 = call i32 @TYPE_NAME(%struct.type* %26)
  %28 = call i32 @ada_name_prefix_len(i32 %27)
  %29 = load %struct.type*, %struct.type** %3, align 8
  %30 = call i32 @TYPE_NAME(%struct.type* %29)
  %31 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  br label %50

32:                                               ; preds = %20
  %33 = load %struct.type*, %struct.type** %3, align 8
  %34 = call i32 @TYPE_LOW_BOUND(%struct.type* %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.type*, %struct.type** %3, align 8
  %36 = load %struct.type*, %struct.type** %3, align 8
  %37 = call i32 @TYPE_NFIELDS(%struct.type* %36)
  %38 = sub nsw i32 %37, 1
  %39 = call i32 @TYPE_FIELD_BITPOS(%struct.type* %35, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.type*, %struct.type** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %43 = call i32 @ada_print_scalar(%struct.type* %40, i32 %41, %struct.ui_file* %42)
  %44 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %45 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.type*, %struct.type** %5, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.ui_file*, %struct.ui_file** %4, align 8
  %49 = call i32 @ada_print_scalar(%struct.type* %46, i32 %47, %struct.ui_file* %48)
  br label %50

50:                                               ; preds = %32, %24
  ret void
}

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @ada_name_prefix_len(i32) #1

declare dso_local i32 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @TYPE_LOW_BOUND(%struct.type*) #1

declare dso_local i32 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i32 @ada_print_scalar(%struct.type*, i32, %struct.ui_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
