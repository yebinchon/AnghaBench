; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_init_array_element.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_eval.c_init_array_element.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value = type { i32 }
%struct.expression = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BINOP_COMMA = common dso_local global i64 0, align 8
@BINOP_RANGE = common dso_local global i64 0, align 8
@NULL_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"tuple range index out of range\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"tuple index out of range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.value*, %struct.value*, %struct.expression*, i32*, i32, i64, i64)* @init_array_element to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @init_array_element(%struct.value* %0, %struct.value* %1, %struct.expression* %2, i32* %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.value*, align 8
  %10 = alloca %struct.value*, align 8
  %11 = alloca %struct.expression*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.value* %0, %struct.value** %9, align 8
  store %struct.value* %1, %struct.value** %10, align 8
  store %struct.expression* %2, %struct.expression** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  %20 = load %struct.value*, %struct.value** %10, align 8
  %21 = call i32 @VALUE_TYPE(%struct.value* %20)
  %22 = call i32 @TYPE_LENGTH(i32 %21)
  store i32 %22, i32* %17, align 4
  %23 = load %struct.expression*, %struct.expression** %11, align 8
  %24 = getelementptr inbounds %struct.expression, %struct.expression* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BINOP_COMMA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %7
  %35 = load i32*, i32** %12, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.value*, %struct.value** %9, align 8
  %39 = load %struct.value*, %struct.value** %10, align 8
  %40 = load %struct.expression*, %struct.expression** %11, align 8
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %13, align 4
  %43 = load i64, i64* %14, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i64 @init_array_element(%struct.value* %38, %struct.value* %39, %struct.expression* %40, i32* %41, i32 %42, i64 %43, i64 %44)
  %46 = load %struct.value*, %struct.value** %9, align 8
  %47 = load %struct.value*, %struct.value** %10, align 8
  %48 = load %struct.expression*, %struct.expression** %11, align 8
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %15, align 8
  %53 = call i64 @init_array_element(%struct.value* %46, %struct.value* %47, %struct.expression* %48, i32* %49, i32 %50, i64 %51, i64 %52)
  store i64 %53, i64* %8, align 8
  br label %148

54:                                               ; preds = %7
  %55 = load %struct.expression*, %struct.expression** %11, align 8
  %56 = getelementptr inbounds %struct.expression, %struct.expression* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @BINOP_RANGE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %54
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @NULL_TYPE, align 4
  %71 = load %struct.expression*, %struct.expression** %11, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @evaluate_subexp(i32 %70, %struct.expression* %71, i32* %72, i32 %73)
  %75 = call i64 @value_as_long(i32 %74)
  store i64 %75, i64* %18, align 8
  %76 = load i32, i32* @NULL_TYPE, align 4
  %77 = load %struct.expression*, %struct.expression** %11, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @evaluate_subexp(i32 %76, %struct.expression* %77, i32* %78, i32 %79)
  %81 = call i64 @value_as_long(i32 %80)
  store i64 %81, i64* %19, align 8
  %82 = load i64, i64* %18, align 8
  %83 = load i64, i64* %14, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %66
  %86 = load i64, i64* %19, align 8
  %87 = load i64, i64* %15, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %85, %66
  %90 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %85
  %92 = load i64, i64* %18, align 8
  store i64 %92, i64* %16, align 8
  br label %93

93:                                               ; preds = %111, %91
  %94 = load i64, i64* %16, align 8
  %95 = load i64, i64* %19, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load %struct.value*, %struct.value** %9, align 8
  %99 = call i64 @VALUE_CONTENTS_RAW(%struct.value* %98)
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %14, align 8
  %102 = sub nsw i64 %100, %101
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = mul nsw i64 %102, %104
  %106 = add nsw i64 %99, %105
  %107 = load %struct.value*, %struct.value** %10, align 8
  %108 = call i32 @VALUE_CONTENTS(%struct.value* %107)
  %109 = load i32, i32* %17, align 4
  %110 = call i32 @memcpy(i64 %106, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %97
  %112 = load i64, i64* %16, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %16, align 8
  br label %93

114:                                              ; preds = %93
  br label %145

115:                                              ; preds = %54
  %116 = load i32, i32* @NULL_TYPE, align 4
  %117 = load %struct.expression*, %struct.expression** %11, align 8
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @evaluate_subexp(i32 %116, %struct.expression* %117, i32* %118, i32 %119)
  %121 = call i64 @value_as_long(i32 %120)
  store i64 %121, i64* %16, align 8
  %122 = load i64, i64* %16, align 8
  %123 = load i64, i64* %14, align 8
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %115
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* %15, align 8
  %128 = icmp sgt i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %125, %115
  %130 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %125
  %132 = load %struct.value*, %struct.value** %9, align 8
  %133 = call i64 @VALUE_CONTENTS_RAW(%struct.value* %132)
  %134 = load i64, i64* %16, align 8
  %135 = load i64, i64* %14, align 8
  %136 = sub nsw i64 %134, %135
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = mul nsw i64 %136, %138
  %140 = add nsw i64 %133, %139
  %141 = load %struct.value*, %struct.value** %10, align 8
  %142 = call i32 @VALUE_CONTENTS(%struct.value* %141)
  %143 = load i32, i32* %17, align 4
  %144 = call i32 @memcpy(i64 %140, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %131, %114
  br label %146

146:                                              ; preds = %145
  %147 = load i64, i64* %16, align 8
  store i64 %147, i64* %8, align 8
  br label %148

148:                                              ; preds = %146, %34
  %149 = load i64, i64* %8, align 8
  ret i64 %149
}

declare dso_local i32 @TYPE_LENGTH(i32) #1

declare dso_local i32 @VALUE_TYPE(%struct.value*) #1

declare dso_local i64 @value_as_long(i32) #1

declare dso_local i32 @evaluate_subexp(i32, %struct.expression*, i32*, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i64 @VALUE_CONTENTS_RAW(%struct.value*) #1

declare dso_local i32 @VALUE_CONTENTS(%struct.value*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
