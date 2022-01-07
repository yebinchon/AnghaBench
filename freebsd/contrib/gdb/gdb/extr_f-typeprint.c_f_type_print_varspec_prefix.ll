; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-typeprint.c_f_type_print_varspec_prefix.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_f-typeprint.c_f_type_print_varspec_prefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.ui_file = type { i32 }

@QUIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"(\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @f_type_print_varspec_prefix(%struct.type* %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.type* %0, %struct.type** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.type*, %struct.type** %5, align 8
  %10 = icmp eq %struct.type* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %43

12:                                               ; preds = %4
  %13 = load %struct.type*, %struct.type** %5, align 8
  %14 = call i64 @TYPE_NAME(%struct.type* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %43

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @QUIT, align 4
  %22 = load %struct.type*, %struct.type** %5, align 8
  %23 = call i32 @TYPE_CODE(%struct.type* %22)
  switch i32 %23, label %43 [
    i32 137, label %24
    i32 141, label %28
    i32 149, label %38
    i32 130, label %42
    i32 132, label %42
    i32 129, label %42
    i32 144, label %42
    i32 140, label %42
    i32 142, label %42
    i32 128, label %42
    i32 143, label %42
    i32 146, label %42
    i32 147, label %42
    i32 134, label %42
    i32 136, label %42
    i32 133, label %42
    i32 148, label %42
    i32 138, label %42
    i32 139, label %42
    i32 135, label %42
    i32 145, label %42
    i32 131, label %42
  ]

24:                                               ; preds = %20
  %25 = load %struct.type*, %struct.type** %5, align 8
  %26 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %25)
  %27 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  call void @f_type_print_varspec_prefix(%struct.type* %26, %struct.ui_file* %27, i32 0, i32 1)
  br label %43

28:                                               ; preds = %20
  %29 = load %struct.type*, %struct.type** %5, align 8
  %30 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %29)
  %31 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  call void @f_type_print_varspec_prefix(%struct.type* %30, %struct.ui_file* %31, i32 0, i32 0)
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %36 = call i32 @fprintf_filtered(%struct.ui_file* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %28
  br label %43

38:                                               ; preds = %20
  %39 = load %struct.type*, %struct.type** %5, align 8
  %40 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %39)
  %41 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  call void @f_type_print_varspec_prefix(%struct.type* %40, %struct.ui_file* %41, i32 0, i32 0)
  br label %43

42:                                               ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  br label %43

43:                                               ; preds = %11, %19, %20, %42, %38, %37, %24
  ret void
}

declare dso_local i64 @TYPE_NAME(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
