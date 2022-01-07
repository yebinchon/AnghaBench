; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_subexp_for_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_evaluate_subexp_for_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.symbol*, i32 }
%struct.symbol = type { i32 }
%struct.type = type { i32 }

@NULL_TYPE = common dso_local global i32 0, align 4
@TYPE_CODE_REF = common dso_local global i32 0, align 4
@EVAL_AVOID_SIDE_EFFECTS = common dso_local global i32 0, align 4
@LOC_CONST = common dso_local global i32 0, align 4
@LOC_CONST_BYTES = common dso_local global i32 0, align 4
@LOC_REGISTER = common dso_local global i32 0, align 4
@LOC_REGPARM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Attempt to take address of register or constant.\00", align 1
@not_lval = common dso_local global i32 0, align 4
@lval_memory = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Attempt to take address of non-lval\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.value* (%struct.expression*, i32*, i32)* @evaluate_subexp_for_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.value* @evaluate_subexp_for_address(%struct.expression* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.value*, align 8
  %5 = alloca %struct.expression*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.symbol*, align 8
  %11 = alloca %struct.type*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.value*, align 8
  store %struct.expression* %0, %struct.expression** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load %struct.expression*, %struct.expression** %5, align 8
  %17 = getelementptr inbounds %struct.expression, %struct.expression* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %117 [
    i32 129, label %25
    i32 128, label %34
    i32 130, label %54
  ]

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @NULL_TYPE, align 4
  %30 = load %struct.expression*, %struct.expression** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.value* @evaluate_subexp(i32 %29, %struct.expression* %30, i32* %31, i32 %32)
  store %struct.value* %33, %struct.value** %4, align 8
  br label %148

34:                                               ; preds = %3
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 3
  store i32 %37, i32* %35, align 4
  %38 = load %struct.expression*, %struct.expression** %5, align 8
  %39 = getelementptr inbounds %struct.expression, %struct.expression* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call %struct.type* @lookup_pointer_type(i32 %46)
  %48 = load i32, i32* @NULL_TYPE, align 4
  %49 = load %struct.expression*, %struct.expression** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.value* @evaluate_subexp(i32 %48, %struct.expression* %49, i32* %50, i32 %51)
  %53 = call %struct.value* @value_cast(%struct.type* %47, %struct.value* %52)
  store %struct.value* %53, %struct.value** %4, align 8
  br label %148

54:                                               ; preds = %3
  %55 = load %struct.expression*, %struct.expression** %5, align 8
  %56 = getelementptr inbounds %struct.expression, %struct.expression* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load %struct.symbol*, %struct.symbol** %62, align 8
  store %struct.symbol* %63, %struct.symbol** %10, align 8
  %64 = load %struct.symbol*, %struct.symbol** %10, align 8
  %65 = call i32 @SYMBOL_TYPE(%struct.symbol* %64)
  %66 = call i32 @TYPE_CODE(i32 %65)
  %67 = load i32, i32* @TYPE_CODE_REF, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %54
  br label %118

70:                                               ; preds = %54
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 4
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %104

77:                                               ; preds = %70
  %78 = load %struct.symbol*, %struct.symbol** %10, align 8
  %79 = call i32 @SYMBOL_TYPE(%struct.symbol* %78)
  %80 = call %struct.type* @lookup_pointer_type(i32 %79)
  store %struct.type* %80, %struct.type** %11, align 8
  %81 = load %struct.symbol*, %struct.symbol** %10, align 8
  %82 = call i32 @SYMBOL_CLASS(%struct.symbol* %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @LOC_CONST, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %77
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @LOC_CONST_BYTES, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %98, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* @LOC_REGISTER, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @LOC_REGPARM, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94, %90, %86, %77
  %99 = call i32 @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %94
  %101 = load %struct.type*, %struct.type** %11, align 8
  %102 = load i32, i32* @not_lval, align 4
  %103 = call %struct.value* @value_zero(%struct.type* %101, i32 %102)
  store %struct.value* %103, %struct.value** %4, align 8
  br label %148

104:                                              ; preds = %70
  %105 = load %struct.symbol*, %struct.symbol** %10, align 8
  %106 = load %struct.expression*, %struct.expression** %5, align 8
  %107 = getelementptr inbounds %struct.expression, %struct.expression* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @block_innermost_frame(i32 %114)
  %116 = call %struct.value* @locate_var_value(%struct.symbol* %105, i32 %115)
  store %struct.value* %116, %struct.value** %4, align 8
  br label %148

117:                                              ; preds = %3
  br label %118

118:                                              ; preds = %117, %69
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @EVAL_AVOID_SIDE_EFFECTS, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %141

122:                                              ; preds = %118
  %123 = load i32, i32* @NULL_TYPE, align 4
  %124 = load %struct.expression*, %struct.expression** %5, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = load i32, i32* %7, align 4
  %127 = call %struct.value* @evaluate_subexp(i32 %123, %struct.expression* %124, i32* %125, i32 %126)
  store %struct.value* %127, %struct.value** %13, align 8
  %128 = load %struct.value*, %struct.value** %13, align 8
  %129 = call i32 @VALUE_LVAL(%struct.value* %128)
  %130 = load i32, i32* @lval_memory, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %138

132:                                              ; preds = %122
  %133 = load %struct.value*, %struct.value** %13, align 8
  %134 = call i32 @VALUE_TYPE(%struct.value* %133)
  %135 = call %struct.type* @lookup_pointer_type(i32 %134)
  %136 = load i32, i32* @not_lval, align 4
  %137 = call %struct.value* @value_zero(%struct.type* %135, i32 %136)
  store %struct.value* %137, %struct.value** %4, align 8
  br label %148

138:                                              ; preds = %122
  %139 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %140

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140, %118
  %142 = load i32, i32* @NULL_TYPE, align 4
  %143 = load %struct.expression*, %struct.expression** %5, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = load i32, i32* %7, align 4
  %146 = call %struct.value* @evaluate_subexp(i32 %142, %struct.expression* %143, i32* %144, i32 %145)
  %147 = call %struct.value* @value_addr(%struct.value* %146)
  store %struct.value* %147, %struct.value** %4, align 8
  br label %148

148:                                              ; preds = %141, %132, %104, %100, %34, %25
  %149 = load %struct.value*, %struct.value** %4, align 8
  ret %struct.value* %149
}

declare dso_local %struct.value* @evaluate_subexp(i32, %struct.expression*, i32*, i32) #1

declare dso_local %struct.value* @value_cast(%struct.type*, %struct.value*) #1

declare dso_local %struct.type* @lookup_pointer_type(i32) #1

declare dso_local i32 @TYPE_CODE(i32) #1

declare dso_local i32 @SYMBOL_TYPE(%struct.symbol*) #1

declare dso_local i32 @SYMBOL_CLASS(%struct.symbol*) #1

declare dso_local i32 @error(i8*) #1

declare dso_local %struct.value* @value_zero(%struct.type*, i32) #1

declare dso_local %struct.value* @locate_var_value(%struct.symbol*, i32) #1

declare dso_local i32 @block_innermost_frame(i32) #1

declare dso_local i32 @VALUE_LVAL(%struct.value*) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local %struct.value* @value_addr(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
