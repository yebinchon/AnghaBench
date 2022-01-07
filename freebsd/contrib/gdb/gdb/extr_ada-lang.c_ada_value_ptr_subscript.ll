; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_ptr_subscript.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_ada-lang.c_ada_value_ptr_subscript.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.type = type { i32 }

@TYPE_CODE_ARRAY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"too many subscripts (%d expected)\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @ada_value_ptr_subscript(%struct.value* %0, %struct.type* %1, i32 %2, %struct.value** %3) #0 {
  %5 = alloca %struct.value*, align 8
  %6 = alloca %struct.type*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.value**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.value*, align 8
  store %struct.value* %0, %struct.value** %5, align 8
  store %struct.type* %1, %struct.type** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.value** %3, %struct.value*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %59, %4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %62

17:                                               ; preds = %13
  %18 = load %struct.type*, %struct.type** %6, align 8
  %19 = call i64 @TYPE_CODE(%struct.type* %18)
  %20 = load i64, i64* @TYPE_CODE_ARRAY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load %struct.type*, %struct.type** %6, align 8
  %27 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %26)
  %28 = call i32 @lookup_pointer_type(%struct.type* %27)
  %29 = load %struct.value*, %struct.value** %5, align 8
  %30 = call i32 @value_copy(%struct.value* %29)
  %31 = call %struct.value* @value_cast(i32 %28, i32 %30)
  store %struct.value* %31, %struct.value** %5, align 8
  %32 = load %struct.type*, %struct.type** %6, align 8
  %33 = call i32 @TYPE_INDEX_TYPE(%struct.type* %32)
  %34 = call i32 @get_discrete_bounds(i32 %33, i64* %10, i64* %11)
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %25
  %38 = load %struct.value**, %struct.value*** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.value*, %struct.value** %38, i64 %40
  %42 = load %struct.value*, %struct.value** %41, align 8
  store %struct.value* %42, %struct.value** %12, align 8
  br label %53

43:                                               ; preds = %25
  %44 = load %struct.value**, %struct.value*** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.value*, %struct.value** %44, i64 %46
  %48 = load %struct.value*, %struct.value** %47, align 8
  %49 = load i32, i32* @builtin_type_int, align 4
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @value_from_longest(i32 %49, i64 %50)
  %52 = call %struct.value* @value_sub(%struct.value* %48, i32 %51)
  store %struct.value* %52, %struct.value** %12, align 8
  br label %53

53:                                               ; preds = %43, %37
  %54 = load %struct.value*, %struct.value** %5, align 8
  %55 = load %struct.value*, %struct.value** %12, align 8
  %56 = call %struct.value* @value_add(%struct.value* %54, %struct.value* %55)
  store %struct.value* %56, %struct.value** %5, align 8
  %57 = load %struct.type*, %struct.type** %6, align 8
  %58 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %57)
  store %struct.type* %58, %struct.type** %6, align 8
  br label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %13

62:                                               ; preds = %13
  %63 = load %struct.value*, %struct.value** %5, align 8
  %64 = call %struct.value* @value_ind(%struct.value* %63)
  ret %struct.value* %64
}

declare dso_local i64 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local %struct.value* @value_cast(i32, i32) #1

declare dso_local i32 @lookup_pointer_type(%struct.type*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local i32 @value_copy(%struct.value*) #1

declare dso_local i32 @get_discrete_bounds(i32, i64*, i64*) #1

declare dso_local i32 @TYPE_INDEX_TYPE(%struct.type*) #1

declare dso_local %struct.value* @value_sub(%struct.value*, i32) #1

declare dso_local i32 @value_from_longest(i32, i64) #1

declare dso_local %struct.value* @value_add(%struct.value*, %struct.value*) #1

declare dso_local %struct.value* @value_ind(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
