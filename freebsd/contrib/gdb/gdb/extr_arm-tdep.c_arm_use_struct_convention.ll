; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_use_struct_convention.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_arm-tdep.c_arm_use_struct_convention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }

@DEPRECATED_REGISTER_SIZE = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i32 0, align 4
@TYPE_CODE_UNION = common dso_local global i32 0, align 4
@TYPE_CODE_FLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.type*)* @arm_use_struct_convention to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_use_struct_convention(i32 %0, %struct.type* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.type* %1, %struct.type** %5, align 8
  %10 = load %struct.type*, %struct.type** %5, align 8
  %11 = call i32 @CHECK_TYPEDEF(%struct.type* %10)
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = call i64 @TYPE_LENGTH(%struct.type* %12)
  %14 = load i64, i64* @DEPRECATED_REGISTER_SIZE, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

17:                                               ; preds = %2
  %18 = load %struct.type*, %struct.type** %5, align 8
  %19 = call i32 @TYPE_CODE(%struct.type* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @TYPE_CODE_UNION, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %71

28:                                               ; preds = %23, %17
  store i32 0, i32* %6, align 4
  %29 = load i32, i32* @TYPE_CODE_STRUCT, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i32, i32* @TYPE_CODE_UNION, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %32, %28
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %65, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.type*, %struct.type** %5, align 8
  %40 = call i32 @TYPE_NFIELDS(%struct.type* %39)
  %41 = icmp slt i32 %38, %40
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load %struct.type*, %struct.type** %5, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @TYPE_FIELD_TYPE(%struct.type* %43, i32 %44)
  %46 = call %struct.type* @check_typedef(i32 %45)
  %47 = call i32 @TYPE_CODE(%struct.type* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @TYPE_CODE_FLT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 1, i32* %6, align 4
  br label %68

52:                                               ; preds = %42
  %53 = load %struct.type*, %struct.type** %5, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @TYPE_FIELD_BITPOS(%struct.type* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.type*, %struct.type** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i64 @TYPE_FIELD_BITSIZE(%struct.type* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 1, i32* %6, align 4
  br label %68

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %52
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  br label %37

68:                                               ; preds = %62, %51, %37
  br label %69

69:                                               ; preds = %68, %32
  %70 = load i32, i32* %6, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %27, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @CHECK_TYPEDEF(%struct.type*) #1

declare dso_local i64 @TYPE_LENGTH(%struct.type*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @TYPE_NFIELDS(%struct.type*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_BITPOS(%struct.type*, i32) #1

declare dso_local i64 @TYPE_FIELD_BITSIZE(%struct.type*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
