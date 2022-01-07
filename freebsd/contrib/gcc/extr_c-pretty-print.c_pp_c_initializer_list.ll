; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_initializer_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_initializer_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@VECTOR_CST = common dso_local global i32 0, align 4
@CONSTRUCTOR = common dso_local global i32 0, align 4
@COMPLEX_CST = common dso_local global i32 0, align 4
@COMPLEX_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @pp_c_initializer_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pp_c_initializer_list(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @TREE_TYPE(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @TREE_CODE(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %148 [
    i32 130, label %14
    i32 129, label %14
    i32 132, label %14
    i32 128, label %70
    i32 131, label %93
  ]

14:                                               ; preds = %2, %2, %2
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TREE_OPERAND(i32 %15, i32 0)
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %66, %14
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @NULL_TREE, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %69

21:                                               ; preds = %17
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 130
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 129
  br i1 %26, label %27, label %34

27:                                               ; preds = %24, %21
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @pp_c_dot(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @TREE_PURPOSE(i32 %31)
  %33 = call i32 @pp_c_primary_expression(i32* %30, i32 %32)
  br label %48

34:                                               ; preds = %24
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @pp_c_left_bracket(i32* %35)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @TREE_PURPOSE(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @TREE_PURPOSE(i32 %42)
  %44 = call i32 @pp_c_constant(i32* %41, i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @pp_c_right_bracket(i32* %46)
  br label %48

48:                                               ; preds = %45, %27
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @pp_c_whitespace(i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call i32 @pp_equal(i32* %51)
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @pp_c_whitespace(i32* %53)
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @TREE_VALUE(i32 %56)
  %58 = call i32 @pp_initializer(i32* %55, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @TREE_CHAIN(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %48
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @pp_separate_with(i32* %63, i8 signext 44)
  br label %65

65:                                               ; preds = %62, %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @TREE_CHAIN(i32 %67)
  store i32 %68, i32* %7, align 4
  br label %17

69:                                               ; preds = %17
  br label %153

70:                                               ; preds = %2
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @TREE_CODE(i32 %71)
  %73 = load i32, i32* @VECTOR_CST, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load i32*, i32** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @TREE_VECTOR_CST_ELTS(i32 %77)
  %79 = call i32 @pp_c_expression_list(i32* %76, i32 %78)
  br label %92

80:                                               ; preds = %70
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @TREE_CODE(i32 %81)
  %83 = load i32, i32* @CONSTRUCTOR, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @CONSTRUCTOR_ELTS(i32 %87)
  %89 = call i32 @pp_c_constructor_elts(i32* %86, i32 %88)
  br label %91

90:                                               ; preds = %80
  br label %149

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %75
  br label %153

93:                                               ; preds = %2
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @TREE_CODE(i32 %94)
  %96 = load i32, i32* @CONSTRUCTOR, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load i32*, i32** %3, align 8
  %100 = load i32, i32* %4, align 4
  %101 = call i32 @CONSTRUCTOR_ELTS(i32 %100)
  %102 = call i32 @pp_c_constructor_elts(i32* %99, i32 %101)
  br label %147

103:                                              ; preds = %93
  %104 = load i32, i32* %4, align 4
  %105 = call i32 @TREE_CODE(i32 %104)
  %106 = load i32, i32* @COMPLEX_CST, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %113, label %108

108:                                              ; preds = %103
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @TREE_CODE(i32 %109)
  %111 = load i32, i32* @COMPLEX_EXPR, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %145

113:                                              ; preds = %108, %103
  %114 = load i32, i32* %4, align 4
  %115 = call i32 @TREE_CODE(i32 %114)
  %116 = load i32, i32* @COMPLEX_CST, align 4
  %117 = icmp eq i32 %115, %116
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %8, align 4
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @TREE_REALPART(i32 %123)
  br label %128

125:                                              ; preds = %113
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @TREE_OPERAND(i32 %126, i32 0)
  br label %128

128:                                              ; preds = %125, %122
  %129 = phi i32 [ %124, %122 ], [ %127, %125 ]
  %130 = call i32 @pp_expression(i32* %119, i32 %129)
  %131 = load i32*, i32** %3, align 8
  %132 = call i32 @pp_separate_with(i32* %131, i8 signext 44)
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* %8, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %128
  %137 = load i32, i32* %4, align 4
  %138 = call i32 @TREE_IMAGPART(i32 %137)
  br label %142

139:                                              ; preds = %128
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @TREE_OPERAND(i32 %140, i32 1)
  br label %142

142:                                              ; preds = %139, %136
  %143 = phi i32 [ %138, %136 ], [ %141, %139 ]
  %144 = call i32 @pp_expression(i32* %133, i32 %143)
  br label %146

145:                                              ; preds = %108
  br label %149

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %98
  br label %153

148:                                              ; preds = %2
  br label %149

149:                                              ; preds = %148, %145, %90
  %150 = load i32*, i32** %3, align 8
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @pp_unsupported_tree(i32* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %147, %92, %69
  ret void
}

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_c_dot(i32*) #1

declare dso_local i32 @pp_c_primary_expression(i32*, i32) #1

declare dso_local i32 @TREE_PURPOSE(i32) #1

declare dso_local i32 @pp_c_left_bracket(i32*) #1

declare dso_local i32 @pp_c_constant(i32*, i32) #1

declare dso_local i32 @pp_c_right_bracket(i32*) #1

declare dso_local i32 @pp_c_whitespace(i32*) #1

declare dso_local i32 @pp_equal(i32*) #1

declare dso_local i32 @pp_initializer(i32*, i32) #1

declare dso_local i32 @TREE_VALUE(i32) #1

declare dso_local i32 @TREE_CHAIN(i32) #1

declare dso_local i32 @pp_separate_with(i32*, i8 signext) #1

declare dso_local i32 @pp_c_expression_list(i32*, i32) #1

declare dso_local i32 @TREE_VECTOR_CST_ELTS(i32) #1

declare dso_local i32 @pp_c_constructor_elts(i32*, i32) #1

declare dso_local i32 @CONSTRUCTOR_ELTS(i32) #1

declare dso_local i32 @pp_expression(i32*, i32) #1

declare dso_local i32 @TREE_REALPART(i32) #1

declare dso_local i32 @TREE_IMAGPART(i32) #1

declare dso_local i32 @pp_unsupported_tree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
