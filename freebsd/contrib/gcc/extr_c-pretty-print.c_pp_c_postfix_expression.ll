; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_postfix_expression.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-pretty-print.c_pp_c_postfix_expression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"++\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@flag_isoc99 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"isunordered\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"__builtin_isunordered\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"!isunordered\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"!__builtin_isunordered\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"!isgreaterequal\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"!__builtin_isgreaterequal\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"!isgreater\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"!__builtin_isgreater\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"!islessequal\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"!__builtin_islessequal\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"!isless\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"!__builtin_isless\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"!islessgreater\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"!__builtin_islessgreater\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"islessgreater\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"__builtin_islessgreater\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"__builtin_abs\00", align 1
@INDIRECT_REF = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"__builtin_va_arg\00", align 1
@FUNCTION_DECL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pp_c_postfix_expression(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @TREE_CODE(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %191 [
    i32 136, label %10
    i32 137, label %10
    i32 146, label %21
    i32 145, label %34
    i32 130, label %43
    i32 138, label %50
    i32 131, label %57
    i32 132, label %64
    i32 133, label %71
    i32 134, label %78
    i32 135, label %85
    i32 139, label %92
    i32 148, label %114
    i32 142, label %125
    i32 144, label %150
    i32 128, label %150
    i32 143, label %150
    i32 141, label %154
    i32 140, label %158
    i32 129, label %162
    i32 147, label %179
  ]

10:                                               ; preds = %2, %2
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @TREE_OPERAND(i32 %12, i32 0)
  %14 = call i32 @pp_postfix_expression(i32* %11, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp eq i32 %16, 136
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %20 = call i32 @pp_identifier(i32* %15, i8* %19)
  br label %195

21:                                               ; preds = %2
  %22 = load i32*, i32** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @TREE_OPERAND(i32 %23, i32 0)
  %25 = call i32 @pp_postfix_expression(i32* %22, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @pp_c_left_bracket(i32* %26)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TREE_OPERAND(i32 %29, i32 1)
  %31 = call i32 @pp_expression(i32* %28, i32 %30)
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @pp_c_right_bracket(i32* %32)
  br label %195

34:                                               ; preds = %2
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @TREE_OPERAND(i32 %36, i32 0)
  %38 = call i32 @pp_postfix_expression(i32* %35, i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @TREE_OPERAND(i32 %40, i32 1)
  %42 = call i32 @pp_c_call_argument_list(i32* %39, i32 %41)
  br label %195

43:                                               ; preds = %2
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* @flag_isoc99, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0)
  %49 = call i32 @pp_c_identifier(i32* %44, i8* %48)
  br label %99

50:                                               ; preds = %2
  %51 = load i32*, i32** %3, align 8
  %52 = load i32, i32* @flag_isoc99, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0)
  %56 = call i32 @pp_c_identifier(i32* %51, i8* %55)
  br label %99

57:                                               ; preds = %2
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* @flag_isoc99, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0)
  %63 = call i32 @pp_c_identifier(i32* %58, i8* %62)
  br label %99

64:                                               ; preds = %2
  %65 = load i32*, i32** %3, align 8
  %66 = load i32, i32* @flag_isoc99, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0)
  %70 = call i32 @pp_c_identifier(i32* %65, i8* %69)
  br label %99

71:                                               ; preds = %2
  %72 = load i32*, i32** %3, align 8
  %73 = load i32, i32* @flag_isoc99, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0)
  %77 = call i32 @pp_c_identifier(i32* %72, i8* %76)
  br label %99

78:                                               ; preds = %2
  %79 = load i32*, i32** %3, align 8
  %80 = load i32, i32* @flag_isoc99, align 4
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0)
  %84 = call i32 @pp_c_identifier(i32* %79, i8* %83)
  br label %99

85:                                               ; preds = %2
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @flag_isoc99, align 4
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0)
  %91 = call i32 @pp_c_identifier(i32* %86, i8* %90)
  br label %99

92:                                               ; preds = %2
  %93 = load i32*, i32** %3, align 8
  %94 = load i32, i32* @flag_isoc99, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i64
  %97 = select i1 %95, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0)
  %98 = call i32 @pp_c_identifier(i32* %93, i8* %97)
  br label %99

99:                                               ; preds = %92, %85, %78, %71, %64, %57, %50, %43
  %100 = load i32*, i32** %3, align 8
  %101 = call i32 @pp_c_left_paren(i32* %100)
  %102 = load i32*, i32** %3, align 8
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @TREE_OPERAND(i32 %103, i32 0)
  %105 = call i32 @pp_expression(i32* %102, i32 %104)
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @pp_separate_with(i32* %106, i8 signext 44)
  %108 = load i32*, i32** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @TREE_OPERAND(i32 %109, i32 1)
  %111 = call i32 @pp_expression(i32* %108, i32 %110)
  %112 = load i32*, i32** %3, align 8
  %113 = call i32 @pp_c_right_paren(i32* %112)
  br label %195

114:                                              ; preds = %2
  %115 = load i32*, i32** %3, align 8
  %116 = call i32 @pp_c_identifier(i32* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  %117 = load i32*, i32** %3, align 8
  %118 = call i32 @pp_c_left_paren(i32* %117)
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @TREE_OPERAND(i32 %120, i32 0)
  %122 = call i32 @pp_expression(i32* %119, i32 %121)
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @pp_c_right_paren(i32* %123)
  br label %195

125:                                              ; preds = %2
  %126 = load i32, i32* %4, align 4
  %127 = call i32 @TREE_OPERAND(i32 %126, i32 0)
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @TREE_CODE(i32 %128)
  %130 = load i32, i32* @INDIRECT_REF, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %139

132:                                              ; preds = %125
  %133 = load i32*, i32** %3, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @TREE_OPERAND(i32 %134, i32 0)
  %136 = call i32 @pp_postfix_expression(i32* %133, i32 %135)
  %137 = load i32*, i32** %3, align 8
  %138 = call i32 @pp_c_arrow(i32* %137)
  br label %145

139:                                              ; preds = %125
  %140 = load i32*, i32** %3, align 8
  %141 = load i32, i32* %6, align 4
  %142 = call i32 @pp_postfix_expression(i32* %140, i32 %141)
  %143 = load i32*, i32** %3, align 8
  %144 = call i32 @pp_c_dot(i32* %143)
  br label %145

145:                                              ; preds = %139, %132
  %146 = load i32*, i32** %3, align 8
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @TREE_OPERAND(i32 %147, i32 1)
  %149 = call i32 @pp_expression(i32* %146, i32 %148)
  br label %195

150:                                              ; preds = %2, %2, %2
  %151 = load i32*, i32** %3, align 8
  %152 = load i32, i32* %4, align 4
  %153 = call i32 @pp_c_compound_literal(i32* %151, i32 %152)
  br label %195

154:                                              ; preds = %2
  %155 = load i32, i32* %4, align 4
  %156 = call i32 @COMPOUND_LITERAL_EXPR_DECL(i32 %155)
  %157 = call i32 @DECL_INITIAL(i32 %156)
  store i32 %157, i32* %4, align 4
  br label %158

158:                                              ; preds = %2, %154
  %159 = load i32*, i32** %3, align 8
  %160 = load i32, i32* %4, align 4
  %161 = call i32 @pp_initializer(i32* %159, i32 %160)
  br label %195

162:                                              ; preds = %2
  %163 = load i32*, i32** %3, align 8
  %164 = call i32 @pp_c_identifier(i32* %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  %165 = load i32*, i32** %3, align 8
  %166 = call i32 @pp_c_left_paren(i32* %165)
  %167 = load i32*, i32** %3, align 8
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @TREE_OPERAND(i32 %168, i32 0)
  %170 = call i32 @pp_assignment_expression(i32* %167, i32 %169)
  %171 = load i32*, i32** %3, align 8
  %172 = call i32 @pp_separate_with(i32* %171, i8 signext 44)
  %173 = load i32*, i32** %3, align 8
  %174 = load i32, i32* %4, align 4
  %175 = call i32 @TREE_TYPE(i32 %174)
  %176 = call i32 @pp_type_id(i32* %173, i32 %175)
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 @pp_c_right_paren(i32* %177)
  br label %195

179:                                              ; preds = %2
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @TREE_OPERAND(i32 %180, i32 0)
  %182 = call i32 @TREE_CODE(i32 %181)
  %183 = load i32, i32* @FUNCTION_DECL, align 4
  %184 = icmp eq i32 %182, %183
  br i1 %184, label %185, label %190

185:                                              ; preds = %179
  %186 = load i32*, i32** %3, align 8
  %187 = load i32, i32* %4, align 4
  %188 = call i32 @TREE_OPERAND(i32 %187, i32 0)
  %189 = call i32 @pp_c_id_expression(i32* %186, i32 %188)
  br label %195

190:                                              ; preds = %179
  br label %191

191:                                              ; preds = %2, %190
  %192 = load i32*, i32** %3, align 8
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @pp_primary_expression(i32* %192, i32 %193)
  br label %195

195:                                              ; preds = %191, %185, %162, %158, %150, %145, %114, %99, %34, %21, %10
  ret void
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @pp_postfix_expression(i32*, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @pp_identifier(i32*, i8*) #1

declare dso_local i32 @pp_c_left_bracket(i32*) #1

declare dso_local i32 @pp_expression(i32*, i32) #1

declare dso_local i32 @pp_c_right_bracket(i32*) #1

declare dso_local i32 @pp_c_call_argument_list(i32*, i32) #1

declare dso_local i32 @pp_c_identifier(i32*, i8*) #1

declare dso_local i32 @pp_c_left_paren(i32*) #1

declare dso_local i32 @pp_separate_with(i32*, i8 signext) #1

declare dso_local i32 @pp_c_right_paren(i32*) #1

declare dso_local i32 @pp_c_arrow(i32*) #1

declare dso_local i32 @pp_c_dot(i32*) #1

declare dso_local i32 @pp_c_compound_literal(i32*, i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i32 @COMPOUND_LITERAL_EXPR_DECL(i32) #1

declare dso_local i32 @pp_initializer(i32*, i32) #1

declare dso_local i32 @pp_assignment_expression(i32*, i32) #1

declare dso_local i32 @pp_type_id(i32*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @pp_c_id_expression(i32*, i32) #1

declare dso_local i32 @pp_primary_expression(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
