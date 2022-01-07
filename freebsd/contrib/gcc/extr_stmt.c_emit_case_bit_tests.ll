; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_emit_case_bit_tests.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_emit_case_bit_tests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.case_node = type { i32, i32, i32, %struct.case_node* }
%struct.case_bit_test = type { i64, i32, i32, i32 }

@MAX_CASE_BIT_TESTS = common dso_local global i32 0, align 4
@MINUS_EXPR = common dso_local global i32 0, align 4
@HOST_BITS_PER_WIDE_INT = common dso_local global i32 0, align 4
@HOST_BITS_PER_INT = common dso_local global i32 0, align 4
@case_bit_test_cmp = common dso_local global i32 0, align 4
@GTU = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@ashl_optab = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i64 0, align 8
@OPTAB_WIDEN = common dso_local global i32 0, align 4
@and_optab = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i64 0, align 8
@NE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, %struct.case_node*, i64)* @emit_case_bit_tests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_case_bit_tests(i32 %0, i32 %1, i32 %2, i32 %3, %struct.case_node* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.case_node*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.case_node*, align 8
  %24 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.case_node* %4, %struct.case_node** %11, align 8
  store i64 %5, i64* %12, align 8
  %25 = load i32, i32* @MAX_CASE_BIT_TESTS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca %struct.case_bit_test, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  store i32 0, i32* %24, align 4
  %29 = load %struct.case_node*, %struct.case_node** %11, align 8
  store %struct.case_node* %29, %struct.case_node** %23, align 8
  br label %30

30:                                               ; preds = %142, %6
  %31 = load %struct.case_node*, %struct.case_node** %23, align 8
  %32 = icmp ne %struct.case_node* %31, null
  br i1 %32, label %33, label %146

33:                                               ; preds = %30
  %34 = load %struct.case_node*, %struct.case_node** %23, align 8
  %35 = getelementptr inbounds %struct.case_node, %struct.case_node* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @label_rtx(i32 %36)
  store i64 %37, i64* %18, align 8
  store i32 0, i32* %19, align 4
  br label %38

38:                                               ; preds = %52, %33
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %24, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %38
  %43 = load i64, i64* %18, align 8
  %44 = load i32, i32* %19, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %45
  %47 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %55

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %19, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %19, align 4
  br label %38

55:                                               ; preds = %50, %38
  %56 = load i32, i32* %19, align 4
  %57 = load i32, i32* %24, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %55
  %60 = load i32, i32* %24, align 4
  %61 = load i32, i32* @MAX_CASE_BIT_TESTS, align 4
  %62 = icmp ult i32 %60, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @gcc_assert(i32 %63)
  %65 = load i32, i32* %19, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %66
  %68 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %67, i32 0, i32 1
  store i32 0, i32* %68, align 8
  %69 = load i32, i32* %19, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %70
  %72 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %71, i32 0, i32 2
  store i32 0, i32* %72, align 4
  %73 = load i64, i64* %18, align 8
  %74 = load i32, i32* %19, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %75
  %77 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %76, i32 0, i32 0
  store i64 %73, i64* %77, align 8
  %78 = load i32, i32* %19, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %79
  %81 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %80, i32 0, i32 3
  store i32 1, i32* %81, align 8
  %82 = load i32, i32* %24, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %24, align 4
  br label %91

84:                                               ; preds = %55
  %85 = load i32, i32* %19, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %86
  %88 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %84, %59
  %92 = load i32, i32* @MINUS_EXPR, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.case_node*, %struct.case_node** %23, align 8
  %95 = getelementptr inbounds %struct.case_node, %struct.case_node* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @fold_build2(i32 %92, i32 %93, i32 %96, i32 %97)
  %99 = call i32 @tree_low_cst(i32 %98, i32 1)
  store i32 %99, i32* %21, align 4
  %100 = load i32, i32* @MINUS_EXPR, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.case_node*, %struct.case_node** %23, align 8
  %103 = getelementptr inbounds %struct.case_node, %struct.case_node* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @fold_build2(i32 %100, i32 %101, i32 %104, i32 %105)
  %107 = call i32 @tree_low_cst(i32 %106, i32 1)
  store i32 %107, i32* %22, align 4
  %108 = load i32, i32* %21, align 4
  store i32 %108, i32* %20, align 4
  br label %109

109:                                              ; preds = %138, %91
  %110 = load i32, i32* %20, align 4
  %111 = load i32, i32* %22, align 4
  %112 = icmp ule i32 %110, %111
  br i1 %112, label %113, label %141

113:                                              ; preds = %109
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* @HOST_BITS_PER_WIDE_INT, align 4
  %116 = icmp uge i32 %114, %115
  br i1 %116, label %117, label %128

117:                                              ; preds = %113
  %118 = load i32, i32* %20, align 4
  %119 = load i32, i32* @HOST_BITS_PER_INT, align 4
  %120 = sub i32 %118, %119
  %121 = shl i32 1, %120
  %122 = load i32, i32* %19, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %123
  %125 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %121
  store i32 %127, i32* %125, align 8
  br label %137

128:                                              ; preds = %113
  %129 = load i32, i32* %20, align 4
  %130 = shl i32 1, %129
  %131 = load i32, i32* %19, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %132
  %134 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %130
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %128, %117
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %20, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %20, align 4
  br label %109

141:                                              ; preds = %109
  br label %142

142:                                              ; preds = %141
  %143 = load %struct.case_node*, %struct.case_node** %23, align 8
  %144 = getelementptr inbounds %struct.case_node, %struct.case_node* %143, i32 0, i32 3
  %145 = load %struct.case_node*, %struct.case_node** %144, align 8
  store %struct.case_node* %145, %struct.case_node** %23, align 8
  br label %30

146:                                              ; preds = %30
  %147 = load i32, i32* %24, align 4
  %148 = load i32, i32* @case_bit_test_cmp, align 4
  %149 = call i32 @qsort(%struct.case_bit_test* %28, i32 %147, i32 24, i32 %148)
  %150 = load i32, i32* @MINUS_EXPR, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 @fold_convert(i32 %152, i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @fold_convert(i32 %155, i32 %156)
  %158 = call i32 @fold_build2(i32 %150, i32 %151, i32 %154, i32 %157)
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* %8, align 4
  %160 = call i64 @expand_normal(i32 %159)
  store i64 %160, i64* %17, align 8
  %161 = call i32 (...) @do_pending_stack_adjust()
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @TYPE_MODE(i32 %162)
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i64 @expand_normal(i32 %164)
  store i64 %165, i64* %16, align 8
  %166 = load i64, i64* %17, align 8
  %167 = load i64, i64* %16, align 8
  %168 = load i32, i32* @GTU, align 4
  %169 = load i32, i32* @NULL_RTX, align 4
  %170 = load i32, i32* %15, align 4
  %171 = load i64, i64* %12, align 8
  %172 = call i32 @emit_cmp_and_jump_insns(i64 %166, i64 %167, i32 %168, i32 %169, i32 %170, i32 1, i64 %171)
  %173 = load i32, i32* @word_mode, align 4
  %174 = load i64, i64* %17, align 8
  %175 = call i64 @convert_to_mode(i32 %173, i64 %174, i32 0)
  store i64 %175, i64* %17, align 8
  %176 = load i32, i32* @word_mode, align 4
  %177 = load i32, i32* @ashl_optab, align 4
  %178 = load i64, i64* @const1_rtx, align 8
  %179 = load i64, i64* %17, align 8
  %180 = load i32, i32* @NULL_RTX, align 4
  %181 = load i32, i32* @OPTAB_WIDEN, align 4
  %182 = call i64 @expand_binop(i32 %176, i32 %177, i64 %178, i64 %179, i32 %180, i32 1, i32 %181)
  store i64 %182, i64* %17, align 8
  store i32 0, i32* %19, align 4
  br label %183

183:                                              ; preds = %218, %146
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %24, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %221

187:                                              ; preds = %183
  %188 = load i32, i32* %19, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %189
  %191 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %19, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %194
  %196 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @word_mode, align 4
  %199 = call i64 @immed_double_const(i32 %192, i32 %197, i32 %198)
  store i64 %199, i64* %16, align 8
  %200 = load i32, i32* @word_mode, align 4
  %201 = load i32, i32* @and_optab, align 4
  %202 = load i64, i64* %17, align 8
  %203 = load i64, i64* %16, align 8
  %204 = load i32, i32* @NULL_RTX, align 4
  %205 = load i32, i32* @OPTAB_WIDEN, align 4
  %206 = call i64 @expand_binop(i32 %200, i32 %201, i64 %202, i64 %203, i32 %204, i32 1, i32 %205)
  store i64 %206, i64* %16, align 8
  %207 = load i64, i64* %16, align 8
  %208 = load i64, i64* @const0_rtx, align 8
  %209 = load i32, i32* @NE, align 4
  %210 = load i32, i32* @NULL_RTX, align 4
  %211 = load i32, i32* @word_mode, align 4
  %212 = load i32, i32* %19, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %28, i64 %213
  %215 = getelementptr inbounds %struct.case_bit_test, %struct.case_bit_test* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = call i32 @emit_cmp_and_jump_insns(i64 %207, i64 %208, i32 %209, i32 %210, i32 %211, i32 1, i64 %216)
  br label %218

218:                                              ; preds = %187
  %219 = load i32, i32* %19, align 4
  %220 = add i32 %219, 1
  store i32 %220, i32* %19, align 4
  br label %183

221:                                              ; preds = %183
  %222 = load i64, i64* %12, align 8
  %223 = call i32 @emit_jump(i64 %222)
  %224 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %224)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @label_rtx(i32) #2

declare dso_local i32 @gcc_assert(i32) #2

declare dso_local i32 @tree_low_cst(i32, i32) #2

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #2

declare dso_local i32 @qsort(%struct.case_bit_test*, i32, i32, i32) #2

declare dso_local i32 @fold_convert(i32, i32) #2

declare dso_local i64 @expand_normal(i32) #2

declare dso_local i32 @do_pending_stack_adjust(...) #2

declare dso_local i32 @TYPE_MODE(i32) #2

declare dso_local i32 @emit_cmp_and_jump_insns(i64, i64, i32, i32, i32, i32, i64) #2

declare dso_local i64 @convert_to_mode(i32, i64, i32) #2

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i32, i32, i32) #2

declare dso_local i64 @immed_double_const(i32, i32, i32) #2

declare dso_local i32 @emit_jump(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
