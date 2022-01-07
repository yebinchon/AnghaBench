; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_subexp_for_sizeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_subexp_for_sizeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.type* }
%struct.type = type { i32 }

@NULL_TYPE = common dso_local global i32 0, align 4
@EVAL_AVOID_SIDE_EFFECTS = common dso_local global i32 0, align 4
@TYPE_CODE_PTR = common dso_local global i32 0, align 4
@TYPE_CODE_REF = common dso_local global i32 0, align 4
@TYPE_CODE_ARRAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Attempt to take contents of a non-pointer value.\00", align 1
@builtin_type_int = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.expression*, i32*)* @evaluate_subexp_for_sizeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @evaluate_subexp_for_sizeof(%struct.expression* %0, i32* %1) #0 {
  %3 = alloca %struct.value*, align 8
  %4 = alloca %struct.expression*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.type*, align 8
  %9 = alloca %struct.value*, align 8
  store %struct.expression* %0, %struct.expression** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.expression*, %struct.expression** %4, align 8
  %13 = getelementptr inbounds %struct.expression, %struct.expression* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %94 [
    i32 129, label %21
    i32 128, label %57
    i32 130, label %75
  ]

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* @NULL_TYPE, align 4
  %26 = load %struct.expression*, %struct.expression** %4, align 8
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %29 = call %struct.value* @evaluate_subexp(i32 %25, %struct.expression* %26, i32* %27, i32 %28)
  store %struct.value* %29, %struct.value** %9, align 8
  %30 = load %struct.value*, %struct.value** %9, align 8
  %31 = call %struct.type* @VALUE_TYPE(%struct.value* %30)
  %32 = call %struct.type* @check_typedef(%struct.type* %31)
  store %struct.type* %32, %struct.type** %8, align 8
  %33 = load %struct.type*, %struct.type** %8, align 8
  %34 = call i32 @TYPE_CODE(%struct.type* %33)
  %35 = load i32, i32* @TYPE_CODE_PTR, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %21
  %38 = load %struct.type*, %struct.type** %8, align 8
  %39 = call i32 @TYPE_CODE(%struct.type* %38)
  %40 = load i32, i32* @TYPE_CODE_REF, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.type*, %struct.type** %8, align 8
  %44 = call i32 @TYPE_CODE(%struct.type* %43)
  %45 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %42, %37, %21
  %50 = load %struct.type*, %struct.type** %8, align 8
  %51 = call %struct.type* @TYPE_TARGET_TYPE(%struct.type* %50)
  %52 = call %struct.type* @check_typedef(%struct.type* %51)
  store %struct.type* %52, %struct.type** %8, align 8
  %53 = load i32, i32* @builtin_type_int, align 4
  %54 = load %struct.type*, %struct.type** %8, align 8
  %55 = call i32 @TYPE_LENGTH(%struct.type* %54)
  %56 = call %struct.value* @value_from_longest(i32 %53, i32 %55)
  store %struct.value* %56, %struct.value** %3, align 8
  br label %105

57:                                               ; preds = %2
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 3
  store i32 %60, i32* %58, align 4
  %61 = load %struct.expression*, %struct.expression** %4, align 8
  %62 = getelementptr inbounds %struct.expression, %struct.expression* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load %struct.type*, %struct.type** %68, align 8
  %70 = call %struct.type* @check_typedef(%struct.type* %69)
  store %struct.type* %70, %struct.type** %8, align 8
  %71 = load i32, i32* @builtin_type_int, align 4
  %72 = load %struct.type*, %struct.type** %8, align 8
  %73 = call i32 @TYPE_LENGTH(%struct.type* %72)
  %74 = call %struct.value* @value_from_longest(i32 %71, i32 %73)
  store %struct.value* %74, %struct.value** %3, align 8
  br label %105

75:                                               ; preds = %2
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %76, align 4
  %79 = load %struct.expression*, %struct.expression** %4, align 8
  %80 = getelementptr inbounds %struct.expression, %struct.expression* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 2
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.type* @SYMBOL_TYPE(i32 %87)
  %89 = call %struct.type* @check_typedef(%struct.type* %88)
  store %struct.type* %89, %struct.type** %8, align 8
  %90 = load i32, i32* @builtin_type_int, align 4
  %91 = load %struct.type*, %struct.type** %8, align 8
  %92 = call i32 @TYPE_LENGTH(%struct.type* %91)
  %93 = call %struct.value* @value_from_longest(i32 %90, i32 %92)
  store %struct.value* %93, %struct.value** %3, align 8
  br label %105

94:                                               ; preds = %2
  %95 = load i32, i32* @NULL_TYPE, align 4
  %96 = load %struct.expression*, %struct.expression** %4, align 8
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %99 = call %struct.value* @evaluate_subexp(i32 %95, %struct.expression* %96, i32* %97, i32 %98)
  store %struct.value* %99, %struct.value** %9, align 8
  %100 = load i32, i32* @builtin_type_int, align 4
  %101 = load %struct.value*, %struct.value** %9, align 8
  %102 = call %struct.type* @VALUE_TYPE(%struct.value* %101)
  %103 = call i32 @TYPE_LENGTH(%struct.type* %102)
  %104 = call %struct.value* @value_from_longest(i32 %100, i32 %103)
  store %struct.value* %104, %struct.value** %3, align 8
  br label %105

105:                                              ; preds = %94, %75, %57, %49
  %106 = load %struct.value*, %struct.value** %3, align 8
  ret %struct.value* %106
}

declare dso_local %struct.value* @evaluate_subexp(i32, %struct.expression*, i32*, i32) #1

declare dso_local %struct.type* @check_typedef(%struct.type*) #1

declare dso_local %struct.type* @VALUE_TYPE(%struct.value*) #1

declare dso_local i32 @TYPE_CODE(%struct.type*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.type* @TYPE_TARGET_TYPE(%struct.type*) #1

declare dso_local %struct.value* @value_from_longest(i32, i32) #1

declare dso_local i32 @TYPE_LENGTH(%struct.type*) #1

declare dso_local %struct.type* @SYMBOL_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
