; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_to_fixed_variant_branch_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_to_fixed_variant_branch_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.type = type { i32 }
%struct.value = type { i32 }

@TYPE_CODE_PTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"___XVU\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.type* (%struct.type*, i8*, i32, %struct.value*)* @to_fixed_variant_branch_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.type* @to_fixed_variant_branch_type(%struct.type* %0, i8* %1, i32 %2, %struct.value* %3) #0 {
  %5 = alloca %struct.type*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.value*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.type*, align 8
  %12 = alloca %struct.type*, align 8
  store %struct.type* %0, %struct.type** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.value* %3, %struct.value** %9, align 8
  %13 = load %struct.type*, %struct.type** %6, align 8
  %14 = call i64 @TYPE_CODE(%struct.type* %13)
  %15 = load i64, i64* @TYPE_CODE_PTR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load %struct.type*, %struct.type** %6, align 8
  %19 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %18)
  store %struct.type* %19, %struct.type** %12, align 8
  br label %22

20:                                               ; preds = %4
  %21 = load %struct.type*, %struct.type** %6, align 8
  store %struct.type* %21, %struct.type** %12, align 8
  br label %22

22:                                               ; preds = %20, %17
  %23 = load %struct.type*, %struct.type** %12, align 8
  %24 = call %struct.type* @ada_find_parallel_type(%struct.type* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.type* %24, %struct.type** %11, align 8
  %25 = load %struct.type*, %struct.type** %11, align 8
  %26 = icmp ne %struct.type* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load %struct.type*, %struct.type** %11, align 8
  store %struct.type* %28, %struct.type** %12, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = load %struct.type*, %struct.type** %12, align 8
  %31 = load %struct.value*, %struct.value** %9, align 8
  %32 = call i32 @VALUE_TYPE(%struct.value* %31)
  %33 = load %struct.value*, %struct.value** %9, align 8
  %34 = call i32 @VALUE_CONTENTS(%struct.value* %33)
  %35 = call i32 @ada_which_variant_applies(%struct.type* %30, i32 %32, i32 %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.type*, %struct.type** %12, align 8
  %40 = call i32 @TYPE_OBJFILE(%struct.type* %39)
  %41 = call %struct.type* @empty_record(i32 %40)
  store %struct.type* %41, %struct.type** %5, align 8
  br label %74

42:                                               ; preds = %29
  %43 = load %struct.type*, %struct.type** %12, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @is_dynamic_field(%struct.type* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.type*, %struct.type** %12, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %48, i32 %49)
  %51 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %50)
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.value*, %struct.value** %9, align 8
  %55 = call %struct.type* @to_fixed_record_type(%struct.type* %51, i8* %52, i32 %53, %struct.value* %54)
  store %struct.type* %55, %struct.type** %5, align 8
  br label %74

56:                                               ; preds = %42
  %57 = load %struct.type*, %struct.type** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %57, i32 %58)
  %60 = call i64 @contains_variant_part(%struct.type* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.type*, %struct.type** %12, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %63, i32 %64)
  %66 = load i8*, i8** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.value*, %struct.value** %9, align 8
  %69 = call %struct.type* @to_fixed_record_type(%struct.type* %65, i8* %66, i32 %67, %struct.value* %68)
  store %struct.type* %69, %struct.type** %5, align 8
  br label %74

70:                                               ; preds = %56
  %71 = load %struct.type*, %struct.type** %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call %struct.type* @TYPE_FIELD_TYPE(%struct.type* %71, i32 %72)
  store %struct.type* %73, %struct.type** %5, align 8
  br label %74

74:                                               ; preds = %70, %62, %47, %38
  %75 = load %struct.type*, %struct.type** %5, align 8
  ret %struct.type* %75
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.type* @ada_find_parallel_type(%struct.type*, i8*) #1

declare dso_local i32 @ada_which_variant_applies(%struct.type*, i32, i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

declare dso_local %struct.type* @empty_record(i32) #1

declare dso_local i32 @TYPE_OBJFILE(%struct.type*) #1

declare dso_local i64 @is_dynamic_field(%struct.type*, i32) #1

declare dso_local %struct.type* @to_fixed_record_type(%struct.type*, i8*, i32, %struct.value*) #1

declare dso_local %struct.type* @TYPE_FIELD_TYPE(%struct.type*, i32) #1

declare dso_local i64 @contains_variant_part(%struct.type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
