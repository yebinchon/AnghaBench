; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_operator.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/gas/extr_expr.c_operator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_line_pointer = common dso_local global i32* null, align 8
@is_end_of_line = common dso_local global i64* null, align 8
@O_illegal = common dso_local global i32 0, align 4
@op_encoding = common dso_local global i32* null, align 8
@O_left_shift = common dso_local global i32 0, align 4
@O_ne = common dso_local global i32 0, align 4
@O_le = common dso_local global i32 0, align 4
@O_eq = common dso_local global i32 0, align 4
@O_right_shift = common dso_local global i32 0, align 4
@O_ge = common dso_local global i32 0, align 4
@O_bit_exclusive_or = common dso_local global i32 0, align 4
@flag_m68k_mri = common dso_local global i32 0, align 4
@O_bit_inclusive_or = common dso_local global i32 0, align 4
@O_logical_or = common dso_local global i32 0, align 4
@O_logical_and = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @operator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @operator(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** @input_line_pointer, align 8
  %7 = load i32, i32* %6, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %4, align 4
  %9 = load i32*, i32** %3, align 8
  store i32 1, i32* %9, align 4
  %10 = load i64*, i64** @is_end_of_line, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @O_illegal, align 4
  store i32 %17, i32* %2, align 4
  br label %131

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  switch i32 %19, label %20 [
    i32 43, label %26
    i32 45, label %26
    i32 60, label %32
    i32 61, label %51
    i32 62, label %65
    i32 33, label %82
    i32 124, label %103
    i32 38, label %117
  ]

20:                                               ; preds = %18
  %21 = load i32*, i32** @op_encoding, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %2, align 4
  br label %131

26:                                               ; preds = %18, %18
  %27 = load i32*, i32** @op_encoding, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %2, align 4
  br label %131

32:                                               ; preds = %18
  %33 = load i32*, i32** @input_line_pointer, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %36 [
    i32 60, label %42
    i32 62, label %44
    i32 61, label %46
  ]

36:                                               ; preds = %32
  %37 = load i32*, i32** @op_encoding, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %2, align 4
  br label %131

42:                                               ; preds = %32
  %43 = load i32, i32* @O_left_shift, align 4
  store i32 %43, i32* %5, align 4
  br label %48

44:                                               ; preds = %32
  %45 = load i32, i32* @O_ne, align 4
  store i32 %45, i32* %5, align 4
  br label %48

46:                                               ; preds = %32
  %47 = load i32, i32* @O_le, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %44, %42
  %49 = load i32*, i32** %3, align 8
  store i32 2, i32* %49, align 4
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %131

51:                                               ; preds = %18
  %52 = load i32*, i32** @input_line_pointer, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 61
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32*, i32** @op_encoding, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %2, align 4
  br label %131

62:                                               ; preds = %51
  %63 = load i32*, i32** %3, align 8
  store i32 2, i32* %63, align 4
  %64 = load i32, i32* @O_eq, align 4
  store i32 %64, i32* %2, align 4
  br label %131

65:                                               ; preds = %18
  %66 = load i32*, i32** @input_line_pointer, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  switch i32 %68, label %69 [
    i32 62, label %75
    i32 61, label %77
  ]

69:                                               ; preds = %65
  %70 = load i32*, i32** @op_encoding, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %2, align 4
  br label %131

75:                                               ; preds = %65
  %76 = load i32, i32* @O_right_shift, align 4
  store i32 %76, i32* %5, align 4
  br label %79

77:                                               ; preds = %65
  %78 = load i32, i32* @O_ge, align 4
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %77, %75
  %80 = load i32*, i32** %3, align 8
  store i32 2, i32* %80, align 4
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %131

82:                                               ; preds = %18
  %83 = load i32*, i32** @input_line_pointer, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %92 [
    i32 33, label %86
    i32 61, label %89
  ]

86:                                               ; preds = %82
  %87 = load i32*, i32** %3, align 8
  store i32 2, i32* %87, align 4
  %88 = load i32, i32* @O_bit_exclusive_or, align 4
  store i32 %88, i32* %2, align 4
  br label %131

89:                                               ; preds = %82
  %90 = load i32*, i32** %3, align 8
  store i32 2, i32* %90, align 4
  %91 = load i32, i32* @O_ne, align 4
  store i32 %91, i32* %2, align 4
  br label %131

92:                                               ; preds = %82
  %93 = load i32, i32* @flag_m68k_mri, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i32, i32* @O_bit_inclusive_or, align 4
  store i32 %96, i32* %2, align 4
  br label %131

97:                                               ; preds = %92
  %98 = load i32*, i32** @op_encoding, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %2, align 4
  br label %131

103:                                              ; preds = %18
  %104 = load i32*, i32** @input_line_pointer, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 124
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load i32*, i32** @op_encoding, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %2, align 4
  br label %131

114:                                              ; preds = %103
  %115 = load i32*, i32** %3, align 8
  store i32 2, i32* %115, align 4
  %116 = load i32, i32* @O_logical_or, align 4
  store i32 %116, i32* %2, align 4
  br label %131

117:                                              ; preds = %18
  %118 = load i32*, i32** @input_line_pointer, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 38
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32*, i32** @op_encoding, align 8
  %124 = load i32, i32* %4, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %2, align 4
  br label %131

128:                                              ; preds = %117
  %129 = load i32*, i32** %3, align 8
  store i32 2, i32* %129, align 4
  %130 = load i32, i32* @O_logical_and, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %128, %122, %114, %108, %97, %95, %89, %86, %79, %69, %62, %56, %48, %36, %26, %20, %16
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
