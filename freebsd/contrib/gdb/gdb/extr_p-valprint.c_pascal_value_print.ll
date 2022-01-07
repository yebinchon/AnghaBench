; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_value_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_p-valprint.c_pascal_value_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.ui_file = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@TYPE_CODE_REF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"char\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"(\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c") \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pascal_value_print(%struct.value* %0, %struct.ui_file* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.ui_file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.type*, align 8
  store %struct.value* %0, %struct.value** %5, align 8
  store %struct.ui_file* %1, %struct.ui_file** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.value*, %struct.value** %5, align 8
  %11 = call %struct.type* @VALUE_TYPE(%struct.value* %10)
  store %struct.type* %11, %struct.type** %9, align 8
  %12 = load %struct.type*, %struct.type** %9, align 8
  %13 = call i64 @TYPE_CODE(%struct.type* %12)
  %14 = load i64, i64* @TYPE_CODE_PTR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %4
  %17 = load %struct.type*, %struct.type** %9, align 8
  %18 = call i64 @TYPE_CODE(%struct.type* %17)
  %19 = load i64, i64* @TYPE_CODE_REF, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %16, %4
  %22 = load %struct.type*, %struct.type** %9, align 8
  %23 = call i64 @TYPE_CODE(%struct.type* %22)
  %24 = load i64, i64* @TYPE_CODE_PTR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.type*, %struct.type** %9, align 8
  %28 = call i32* @TYPE_NAME(%struct.type* %27)
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.type*, %struct.type** %9, align 8
  %32 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %31)
  %33 = call i32* @TYPE_NAME(%struct.type* %32)
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.type*, %struct.type** %9, align 8
  %37 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %36)
  %38 = call i32* @TYPE_NAME(%struct.type* %37)
  %39 = call i64 @strcmp(i32* %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %50

42:                                               ; preds = %35, %30, %26, %21
  %43 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %44 = call i32 @fprintf_filtered(%struct.ui_file* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.type*, %struct.type** %9, align 8
  %46 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %47 = call i32 @type_print(%struct.type* %45, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), %struct.ui_file* %46, i32 -1)
  %48 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %49 = call i32 @fprintf_filtered(%struct.ui_file* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %42, %41
  br label %51

51:                                               ; preds = %50, %16
  %52 = load %struct.value*, %struct.value** %5, align 8
  %53 = load %struct.ui_file*, %struct.ui_file** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @common_val_print(%struct.value* %52, %struct.ui_file* %53, i32 %54, i32 1, i32 0, i32 %55)
  ret i32 %56
}

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32* @TYPE_NAME(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*) #1

declare dso_local i32 @type_print(%struct.type*, i8*, %struct.ui_file*, i32) #1

declare dso_local i32 @common_val_print(%struct.value*, %struct.ui_file*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
