; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_can_use_hardware_watchpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_breakpoint.c_can_use_hardware_watchpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i64, i64, %struct.value* }
%struct.type = type { i32 }

@can_use_hw_watchpoints = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i64 0, align 8
@TYPE_CODE_STRUCT = common dso_local global i64 0, align 8
@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@not_lval = common dso_local global i64 0, align 8
@lval_register = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.value*)* @can_use_hardware_watchpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_use_hardware_watchpoint(%struct.value* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.value*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.value* %0, %struct.value** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.value*, %struct.value** %3, align 8
  store %struct.value* %9, %struct.value** %5, align 8
  %10 = load i32, i32* @can_use_hw_watchpoints, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %86, %13
  %15 = load %struct.value*, %struct.value** %3, align 8
  %16 = icmp ne %struct.value* %15, null
  br i1 %16, label %17, label %90

17:                                               ; preds = %14
  %18 = load %struct.value*, %struct.value** %3, align 8
  %19 = call i64 @VALUE_LVAL(%struct.value* %18)
  %20 = load i64, i64* @lval_memory, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %64

22:                                               ; preds = %17
  %23 = load %struct.value*, %struct.value** %3, align 8
  %24 = call i64 @VALUE_LAZY(%struct.value* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %63

27:                                               ; preds = %22
  %28 = load %struct.value*, %struct.value** %3, align 8
  %29 = call i32 @VALUE_TYPE(%struct.value* %28)
  %30 = call %struct.type* @check_typedef(i32 %29)
  store %struct.type* %30, %struct.type** %6, align 8
  %31 = load %struct.value*, %struct.value** %3, align 8
  %32 = load %struct.value*, %struct.value** %5, align 8
  %33 = icmp eq %struct.value* %31, %32
  br i1 %33, label %44, label %34

34:                                               ; preds = %27
  %35 = load %struct.type*, %struct.type** %6, align 8
  %36 = call i64 @TYPE_CODE(%struct.type* %35)
  %37 = load i64, i64* @TYPE_CODE_STRUCT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %34
  %40 = load %struct.type*, %struct.type** %6, align 8
  %41 = call i64 @TYPE_CODE(%struct.type* %40)
  %42 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %39, %27
  %45 = load %struct.value*, %struct.value** %3, align 8
  %46 = call i64 @VALUE_ADDRESS(%struct.value* %45)
  %47 = load %struct.value*, %struct.value** %3, align 8
  %48 = call i64 @VALUE_OFFSET(%struct.value* %47)
  %49 = add nsw i64 %46, %48
  store i64 %49, i64* %7, align 8
  %50 = load %struct.value*, %struct.value** %3, align 8
  %51 = call i32 @VALUE_TYPE(%struct.value* %50)
  %52 = call i32 @TYPE_LENGTH(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @TARGET_REGION_OK_FOR_HW_WATCHPOINT(i64 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %92

58:                                               ; preds = %44
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58
  br label %62

62:                                               ; preds = %61, %39, %34
  br label %63

63:                                               ; preds = %62, %26
  br label %85

64:                                               ; preds = %17
  %65 = load %struct.value*, %struct.value** %3, align 8
  %66 = getelementptr inbounds %struct.value, %struct.value* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @not_lval, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.value*, %struct.value** %3, align 8
  %72 = getelementptr inbounds %struct.value, %struct.value* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %92

76:                                               ; preds = %70, %64
  %77 = load %struct.value*, %struct.value** %3, align 8
  %78 = getelementptr inbounds %struct.value, %struct.value* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @lval_register, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %92

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85
  %87 = load %struct.value*, %struct.value** %3, align 8
  %88 = getelementptr inbounds %struct.value, %struct.value* %87, i32 0, i32 2
  %89 = load %struct.value*, %struct.value** %88, align 8
  store %struct.value* %89, %struct.value** %3, align 8
  br label %14

90:                                               ; preds = %14
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %82, %75, %57, %12
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @VALUE_LVAL(%struct.value*) #1

declare dso_local i64 @VALUE_LAZY(%struct.value*) #1

declare dso_local %struct.type* @check_typedef(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i64 @VALUE_ADDRESS(%struct.value*) #1

declare dso_local i64 @VALUE_OFFSET(%struct.value*) #1

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @TARGET_REGION_OK_FOR_HW_WATCHPOINT(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
