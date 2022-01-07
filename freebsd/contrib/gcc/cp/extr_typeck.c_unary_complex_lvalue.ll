; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_unary_complex_lvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_unary_complex_lvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@COMPOUND_EXPR = common dso_local global i64 0, align 8
@COND_EXPR = common dso_local global i64 0, align 8
@MIN_EXPR = common dso_local global i64 0, align 8
@MAX_EXPR = common dso_local global i64 0, align 8
@MODIFY_EXPR = common dso_local global i64 0, align 8
@PREINCREMENT_EXPR = common dso_local global i64 0, align 8
@PREDECREMENT_EXPR = common dso_local global i64 0, align 8
@ADDR_EXPR = common dso_local global i32 0, align 4
@INIT_EXPR = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@METHOD_TYPE = common dso_local global i64 0, align 8
@OFFSET_REF = common dso_local global i64 0, align 8
@SAVE_EXPR = common dso_local global i64 0, align 8
@CALL_EXPR = common dso_local global i64 0, align 8
@INDIRECT_REF = common dso_local global i64 0, align 8
@current_function_decl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unary_complex_lvalue(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i64, i64* @processing_template_decl, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @NULL_TREE, align 4
  store i32 %14, i32* %3, align 4
  br label %198

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @COMPOUND_EXPR, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @TREE_OPERAND(i32 %22, i32 1)
  %24 = call i32 @build_unary_op(i32 %21, i32 %23, i32 0)
  store i32 %24, i32* %6, align 4
  %25 = load i64, i64* @COMPOUND_EXPR, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @TREE_TYPE(i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @TREE_OPERAND(i32 %28, i32 0)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @build2(i64 %25, i32 %27, i32 %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %198

32:                                               ; preds = %15
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @TREE_CODE(i32 %33)
  %35 = load i64, i64* @COND_EXPR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %47, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @TREE_CODE(i32 %38)
  %40 = load i64, i64* @MIN_EXPR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = call i64 @TREE_CODE(i32 %43)
  %45 = load i64, i64* @MAX_EXPR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42, %37, %32
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @rationalize_conditional_expr(i32 %48, i32 %49)
  store i32 %50, i32* %3, align 4
  br label %198

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @TREE_CODE(i32 %52)
  %54 = load i64, i64* @MODIFY_EXPR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = call i64 @TREE_CODE(i32 %57)
  %59 = load i64, i64* @PREINCREMENT_EXPR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %5, align 4
  %63 = call i64 @TREE_CODE(i32 %62)
  %64 = load i64, i64* @PREDECREMENT_EXPR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %61, %56, %51
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @TREE_OPERAND(i32 %67, i32 0)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i64 @TREE_SIDE_EFFECTS(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %66
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @stabilize_reference(i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i64 @TREE_CODE(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @TREE_TYPE(i32 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @TREE_OPERAND(i32 %80, i32 1)
  %82 = call i32 @build2(i64 %76, i32 %78, i32 %79, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %72, %66
  %84 = load i32, i32* %4, align 4
  %85 = load i64, i64* @COMPOUND_EXPR, align 8
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @TREE_TYPE(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @build2(i64 %85, i32 %87, i32 %88, i32 %89)
  %91 = call i32 @unary_complex_lvalue(i32 %84, i32 %90)
  store i32 %91, i32* %3, align 4
  br label %198

92:                                               ; preds = %61
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @ADDR_EXPR, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @NULL_TREE, align 4
  store i32 %97, i32* %3, align 4
  br label %198

98:                                               ; preds = %92
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @TREE_CODE(i32 %99)
  %101 = load i64, i64* @MODIFY_EXPR, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %5, align 4
  %105 = call i64 @TREE_CODE(i32 %104)
  %106 = load i64, i64* @INIT_EXPR, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %120

108:                                              ; preds = %103, %98
  %109 = load i32, i32* %4, align 4
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @TREE_OPERAND(i32 %110, i32 0)
  %112 = call i32 @build_unary_op(i32 %109, i32 %111, i32 0)
  store i32 %112, i32* %8, align 4
  %113 = load i64, i64* @COMPOUND_EXPR, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @TREE_TYPE(i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @build2(i64 %113, i32 %115, i32 %116, i32 %117)
  store i32 %118, i32* %5, align 4
  store i32 1, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %3, align 4
  br label %198

120:                                              ; preds = %103
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @TREE_TYPE(i32 %121)
  %123 = call i64 @TREE_CODE(i32 %122)
  %124 = load i64, i64* @FUNCTION_TYPE, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %137, label %126

126:                                              ; preds = %120
  %127 = load i32, i32* %5, align 4
  %128 = call i32 @TREE_TYPE(i32 %127)
  %129 = call i64 @TREE_CODE(i32 %128)
  %130 = load i64, i64* @METHOD_TYPE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %137, label %132

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = call i64 @TREE_CODE(i32 %133)
  %135 = load i64, i64* @OFFSET_REF, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %132, %126, %120
  %138 = load i32, i32* @NULL_TREE, align 4
  store i32 %138, i32* %3, align 4
  br label %198

139:                                              ; preds = %132
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %10, align 4
  %141 = load i32, i32* %10, align 4
  %142 = call i64 @TREE_CODE(i32 %141)
  %143 = load i64, i64* @SAVE_EXPR, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139
  %146 = load i32, i32* %10, align 4
  %147 = call i32 @TREE_OPERAND(i32 %146, i32 0)
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %145, %139
  %149 = load i32, i32* %10, align 4
  %150 = call i64 @TREE_CODE(i32 %149)
  %151 = load i64, i64* @CALL_EXPR, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %177

153:                                              ; preds = %148
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @TREE_TYPE(i32 %154)
  %156 = call i64 @IS_AGGR_TYPE(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %153
  %159 = load i32, i32* %5, align 4
  %160 = call i64 @TREE_CODE(i32 %159)
  %161 = load i64, i64* @SAVE_EXPR, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %5, align 4
  store i32 %164, i32* %10, align 4
  br label %170

165:                                              ; preds = %158
  %166 = load i32, i32* %5, align 4
  %167 = call i32 @TREE_TYPE(i32 %166)
  %168 = load i32, i32* %5, align 4
  %169 = call i32 @build_cplus_new(i32 %167, i32 %168)
  store i32 %169, i32* %10, align 4
  br label %170

170:                                              ; preds = %165, %163
  %171 = load i32, i32* @ADDR_EXPR, align 4
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @TREE_TYPE(i32 %172)
  %174 = call i32 @build_pointer_type(i32 %173)
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @build1(i32 %171, i32 %174, i32 %175)
  store i32 %176, i32* %3, align 4
  br label %198

177:                                              ; preds = %153, %148
  %178 = load i32, i32* %5, align 4
  %179 = call i64 @TREE_CODE(i32 %178)
  %180 = load i64, i64* @SAVE_EXPR, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %196

182:                                              ; preds = %177
  %183 = load i32, i32* %10, align 4
  %184 = call i64 @TREE_CODE(i32 %183)
  %185 = load i64, i64* @INDIRECT_REF, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %182
  %188 = load i64, i64* @SAVE_EXPR, align 8
  %189 = load i32, i32* %5, align 4
  %190 = call i32 @TREE_TYPE(i32 %189)
  %191 = call i32 @build_pointer_type(i32 %190)
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @TREE_OPERAND(i32 %192, i32 0)
  %194 = load i32, i32* @current_function_decl, align 4
  %195 = call i32 @build3(i64 %188, i32 %191, i32 %193, i32 %194, i32* null)
  store i32 %195, i32* %3, align 4
  br label %198

196:                                              ; preds = %182, %177
  %197 = load i32, i32* @NULL_TREE, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %187, %170, %137, %108, %96, %83, %47, %20, %13
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @build_unary_op(i32, i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @build2(i64, i32, i32, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @rationalize_conditional_expr(i32, i32) #1

declare dso_local i64 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @stabilize_reference(i32) #1

declare dso_local i64 @IS_AGGR_TYPE(i32) #1

declare dso_local i32 @build_cplus_new(i32, i32) #1

declare dso_local i32 @build1(i32, i32, i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @build3(i64, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
