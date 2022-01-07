; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c_find_function_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_infcall.c_find_function_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@TYPE_CODE_FUNC = common dso_local global i32 0, align 4
@TYPE_CODE_METHOD = common dso_local global i32 0, align 4
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@current_gdbarch = common dso_local global i32 0, align 4
@current_target = common dso_local global i32 0, align 4
@builtin_type_int = common dso_local global %struct.type* null, align 8
@TYPE_CODE_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Invalid data type for function to be called.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @find_function_addr(%struct.value* %0, %struct.type** %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.type**, align 8
  %5 = alloca %struct.type*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.type*, align 8
  %8 = alloca i64, align 8
  store %struct.value* %0, %struct.value** %3, align 8
  store %struct.type** %1, %struct.type*** %4, align 8
  %9 = load %struct.value*, %struct.value** %3, align 8
  %10 = call %struct.type* @VALUE_TYPE(%struct.value* %9)
  %11 = call %struct.type* @check_typedef(%struct.type* %10)
  store %struct.type* %11, %struct.type** %5, align 8
  %12 = load %struct.type*, %struct.type** %5, align 8
  %13 = call i32 @TYPE_CODE(%struct.type* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @TYPE_CODE_METHOD, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %2
  %22 = load %struct.value*, %struct.value** %3, align 8
  %23 = call i64 @VALUE_ADDRESS(%struct.value* %22)
  store i64 %23, i64* %8, align 8
  %24 = load %struct.type*, %struct.type** %5, align 8
  %25 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %24)
  store %struct.type* %25, %struct.type** %7, align 8
  br label %75

26:                                               ; preds = %17
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @TYPE_CODE_PTR, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %54

30:                                               ; preds = %26
  %31 = load %struct.value*, %struct.value** %3, align 8
  %32 = call i64 @value_as_address(%struct.value* %31)
  store i64 %32, i64* %8, align 8
  %33 = load %struct.type*, %struct.type** %5, align 8
  %34 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %33)
  %35 = call %struct.type* @check_typedef(%struct.type* %34)
  store %struct.type* %35, %struct.type** %5, align 8
  %36 = load %struct.type*, %struct.type** %5, align 8
  %37 = call i32 @TYPE_CODE(%struct.type* %36)
  %38 = load i32, i32* @TYPE_CODE_FUNC, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = load %struct.type*, %struct.type** %5, align 8
  %42 = call i32 @TYPE_CODE(%struct.type* %41)
  %43 = load i32, i32* @TYPE_CODE_METHOD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40, %30
  %46 = load i32, i32* @current_gdbarch, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @gdbarch_convert_from_func_ptr_addr(i32 %46, i64 %47, i32* @current_target)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.type*, %struct.type** %5, align 8
  %50 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %49)
  store %struct.type* %50, %struct.type** %7, align 8
  br label %53

51:                                               ; preds = %40
  %52 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  store %struct.type* %52, %struct.type** %7, align 8
  br label %53

53:                                               ; preds = %51, %45
  br label %74

54:                                               ; preds = %26
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @TYPE_CODE_INT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = load %struct.type*, %struct.type** %5, align 8
  %60 = call i32 @TYPE_LENGTH(%struct.type* %59)
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.value*, %struct.value** %3, align 8
  %64 = call %struct.value* @value_addr(%struct.value* %63)
  %65 = call i64 @value_as_address(%struct.value* %64)
  store i64 %65, i64* %8, align 8
  br label %69

66:                                               ; preds = %58
  %67 = load %struct.value*, %struct.value** %3, align 8
  %68 = call i64 @value_as_long(%struct.value* %67)
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %66, %62
  %70 = load %struct.type*, %struct.type** @builtin_type_int, align 8
  store %struct.type* %70, %struct.type** %7, align 8
  br label %73

71:                                               ; preds = %54
  %72 = call i32 @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %69
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %74, %21
  %76 = load %struct.type*, %struct.type** %7, align 8
  %77 = load %struct.type**, %struct.type*** %4, align 8
  store %struct.type* %76, %struct.type** %77, align 8
  %78 = load i64, i64* %8, align 8
  ret i64 %78
}

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i64 @value_as_address(%struct.value*) #1

declare dso_local i64 @gdbarch_convert_from_func_ptr_addr(i32, i64, i32*) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

declare dso_local i64 @value_as_long(%struct.value*) #1

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
