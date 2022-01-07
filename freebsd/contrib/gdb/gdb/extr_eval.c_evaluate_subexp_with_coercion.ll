; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_subexp_with_coercion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_subexp_with_coercion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.symbol* }
%struct.symbol = type { i32 }

@TYPE_CODE_ARRAY = common dso_local global i32 0, align 4
@CAST_IS_CONVERSION = common dso_local global i32 0, align 4
@NULL_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.value* @evaluate_subexp_with_coercion(%struct.expression* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.expression*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.value*, align 8
  %11 = alloca %struct.symbol*, align 8
  store %struct.expression* %0, %struct.expression** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.expression*, %struct.expression** %5, align 8
  %15 = getelementptr inbounds %struct.expression, %struct.expression* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %66 [
    i32 128, label %23
  ]

23:                                               ; preds = %3
  %24 = load %struct.expression*, %struct.expression** %5, align 8
  %25 = getelementptr inbounds %struct.expression, %struct.expression* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 2
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.symbol*, %struct.symbol** %31, align 8
  store %struct.symbol* %32, %struct.symbol** %11, align 8
  %33 = load %struct.symbol*, %struct.symbol** %11, align 8
  %34 = call i32 @SYMBOL_TYPE(%struct.symbol* %33)
  %35 = call i32 @check_typedef(i32 %34)
  %36 = call i32 @TYPE_CODE(i32 %35)
  %37 = load i32, i32* @TYPE_CODE_ARRAY, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %65

39:                                               ; preds = %23
  %40 = load i32, i32* @CAST_IS_CONVERSION, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %39
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %43, align 4
  %46 = load %struct.symbol*, %struct.symbol** %11, align 8
  %47 = load %struct.expression*, %struct.expression** %5, align 8
  %48 = getelementptr inbounds %struct.expression, %struct.expression* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @block_innermost_frame(i32 %55)
  %57 = call %struct.value* @locate_var_value(%struct.symbol* %46, i32 %56)
  store %struct.value* %57, %struct.value** %10, align 8
  %58 = load %struct.symbol*, %struct.symbol** %11, align 8
  %59 = call i32 @SYMBOL_TYPE(%struct.symbol* %58)
  %60 = call i32 @check_typedef(i32 %59)
  %61 = call i32 @TYPE_TARGET_TYPE(i32 %60)
  %62 = call i32 @lookup_pointer_type(i32 %61)
  %63 = load %struct.value*, %struct.value** %10, align 8
  %64 = call %struct.value* @value_cast(i32 %62, %struct.value* %63)
  store %struct.value* %64, %struct.value** %4, align 8
  br label %72

65:                                               ; preds = %39, %23
  br label %66

66:                                               ; preds = %3, %65
  %67 = load i32, i32* @NULL_TYPE, align 4
  %68 = load %struct.expression*, %struct.expression** %5, align 8
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call %struct.value* @evaluate_subexp(i32 %67, %struct.expression* %68, i32* %69, i32 %70)
  store %struct.value* %71, %struct.value** %4, align 8
  br label %72

72:                                               ; preds = %66, %42
  %73 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %73
}

declare dso_local i32 @TYPE_CODE(i32) #1

declare dso_local i32 @check_typedef(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local %struct.value* @locate_var_value(%struct.symbol*, i32) #1

declare dso_local i32 @block_innermost_frame(i32) #1

declare dso_local %struct.value* @value_cast(i32, %struct.value*) #1

declare dso_local i32 @lookup_pointer_type(i32) #1

declare dso_local i32 @TYPE_TARGET_TYPE(i32) #1

declare dso_local %struct.value* @evaluate_subexp(i32, %struct.expression*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
