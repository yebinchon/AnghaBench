; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_prepare_float_lib_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_prepare_float_lib_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VOIDmode = common dso_local global i32 0, align 4
@code_to_optab = common dso_local global %struct.TYPE_4__** null, align 8
@UNORDERED = common dso_local global i32 0, align 4
@word_mode = common dso_local global i32 0, align 4
@IF_THEN_ELSE = common dso_local global i32 0, align 4
@const_true_rtx = common dso_local global i32 0, align 4
@const0_rtx = common dso_local global i32 0, align 4
@const1_rtx = common dso_local global i32 0, align 4
@constm1_rtx = common dso_local global i32 0, align 4
@NULL_RTX = common dso_local global i32 0, align 4
@LCT_CONST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @prepare_float_lib_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_float_lib_cmp(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @swap_condition(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @reverse_condition_maybe_unordered(i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i32 @GET_MODE(i32 %38)
  store i32 %39, i32* %16, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %40 = load i32, i32* %16, align 4
  store i32 %40, i32* %17, align 4
  br label %41

41:                                               ; preds = %101, %5
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* @VOIDmode, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %104

45:                                               ; preds = %41
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @code_to_optab, align 8
  %47 = load i32, i32* %11, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %17, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %22, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %104

60:                                               ; preds = %45
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @code_to_optab, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %17, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %22, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %60
  %75 = load i32, i32* %14, align 4
  store i32 %75, i32* %24, align 4
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %24, align 4
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* %12, align 4
  store i32 %78, i32* %11, align 4
  br label %104

79:                                               ; preds = %60
  %80 = load %struct.TYPE_4__**, %struct.TYPE_4__*** @code_to_optab, align 8
  %81 = load i32, i32* %13, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %80, i64 %82
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %17, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %22, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %79
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i64 @FLOAT_LIB_COMPARE_RETURNS_BOOL(i32 %94, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %11, align 4
  store i32 1, i32* %23, align 4
  br label %104

100:                                              ; preds = %93, %79
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @GET_MODE_WIDER_MODE(i32 %102)
  store i32 %103, i32* %17, align 4
  br label %41

104:                                              ; preds = %98, %74, %59, %41
  %105 = load i32, i32* %17, align 4
  %106 = load i32, i32* @VOIDmode, align 4
  %107 = icmp ne i32 %105, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @gcc_assert(i32 %108)
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %104
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @convert_to_mode(i32 %114, i32 %115, i32 0)
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %15, align 4
  %119 = call i32 @convert_to_mode(i32 %117, i32 %118, i32 0)
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %113, %104
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @UNORDERED, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %142

124:                                              ; preds = %120
  %125 = load i32, i32* @word_mode, align 4
  %126 = load i32, i32* %17, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = call i32 @simplify_gen_relational(i32 128, i32 %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %25, align 4
  %130 = load i32, i32* @word_mode, align 4
  %131 = load i32, i32* %17, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = call i32 @simplify_gen_relational(i32 128, i32 %130, i32 %131, i32 %132, i32 %133)
  store i32 %134, i32* %21, align 4
  %135 = load i32, i32* @IF_THEN_ELSE, align 4
  %136 = load i32, i32* @word_mode, align 4
  %137 = load i32, i32* @word_mode, align 4
  %138 = load i32, i32* %25, align 4
  %139 = load i32, i32* @const_true_rtx, align 4
  %140 = load i32, i32* %21, align 4
  %141 = call i32 @simplify_gen_ternary(i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140)
  store i32 %141, i32* %21, align 4
  br label %184

142:                                              ; preds = %120
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @word_mode, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = call i32 @simplify_gen_relational(i32 %143, i32 %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %21, align 4
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* %11, align 4
  %151 = call i64 @FLOAT_LIB_COMPARE_RETURNS_BOOL(i32 %149, i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %183, label %153

153:                                              ; preds = %142
  %154 = load i32, i32* %11, align 4
  switch i32 %154, label %173 [
    i32 133, label %155
    i32 128, label %158
    i32 131, label %161
    i32 132, label %164
    i32 129, label %167
    i32 130, label %170
  ]

155:                                              ; preds = %153
  %156 = load i32, i32* @const0_rtx, align 4
  store i32 %156, i32* %26, align 4
  %157 = load i32, i32* @const_true_rtx, align 4
  store i32 %157, i32* %27, align 4
  br label %175

158:                                              ; preds = %153
  %159 = load i32, i32* @const_true_rtx, align 4
  store i32 %159, i32* %26, align 4
  %160 = load i32, i32* @const0_rtx, align 4
  store i32 %160, i32* %27, align 4
  br label %175

161:                                              ; preds = %153
  %162 = load i32, i32* @const1_rtx, align 4
  store i32 %162, i32* %26, align 4
  %163 = load i32, i32* @const0_rtx, align 4
  store i32 %163, i32* %27, align 4
  br label %175

164:                                              ; preds = %153
  %165 = load i32, i32* @const0_rtx, align 4
  store i32 %165, i32* %26, align 4
  %166 = load i32, i32* @constm1_rtx, align 4
  store i32 %166, i32* %27, align 4
  br label %175

167:                                              ; preds = %153
  %168 = load i32, i32* @constm1_rtx, align 4
  store i32 %168, i32* %26, align 4
  %169 = load i32, i32* @const0_rtx, align 4
  store i32 %169, i32* %27, align 4
  br label %175

170:                                              ; preds = %153
  %171 = load i32, i32* @const0_rtx, align 4
  store i32 %171, i32* %26, align 4
  %172 = load i32, i32* @const1_rtx, align 4
  store i32 %172, i32* %27, align 4
  br label %175

173:                                              ; preds = %153
  %174 = call i32 (...) @gcc_unreachable()
  br label %175

175:                                              ; preds = %173, %170, %167, %164, %161, %158, %155
  %176 = load i32, i32* @IF_THEN_ELSE, align 4
  %177 = load i32, i32* @word_mode, align 4
  %178 = load i32, i32* @word_mode, align 4
  %179 = load i32, i32* %21, align 4
  %180 = load i32, i32* %26, align 4
  %181 = load i32, i32* %27, align 4
  %182 = call i32 @simplify_gen_ternary(i32 %176, i32 %177, i32 %178, i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %21, align 4
  br label %183

183:                                              ; preds = %175, %142
  br label %184

184:                                              ; preds = %183, %124
  %185 = call i32 (...) @start_sequence()
  %186 = load i32, i32* %22, align 4
  %187 = load i32, i32* @NULL_RTX, align 4
  %188 = load i32, i32* @LCT_CONST, align 4
  %189 = load i32, i32* @word_mode, align 4
  %190 = load i32, i32* %14, align 4
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %15, align 4
  %193 = load i32, i32* %17, align 4
  %194 = call i32 @emit_library_call_value(i32 %186, i32 %187, i32 %188, i32 %189, i32 2, i32 %190, i32 %191, i32 %192, i32 %193)
  store i32 %194, i32* %18, align 4
  %195 = call i32 (...) @get_insns()
  store i32 %195, i32* %20, align 4
  %196 = call i32 (...) @end_sequence()
  %197 = load i32, i32* @word_mode, align 4
  %198 = call i32 @gen_reg_rtx(i32 %197)
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %20, align 4
  %200 = load i32, i32* %19, align 4
  %201 = load i32, i32* %18, align 4
  %202 = load i32, i32* %21, align 4
  %203 = call i32 @emit_libcall_block(i32 %199, i32 %200, i32 %201, i32 %202)
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @UNORDERED, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %212, label %207

207:                                              ; preds = %184
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %11, align 4
  %210 = call i64 @FLOAT_LIB_COMPARE_RETURNS_BOOL(i32 %208, i32 %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207, %184
  %213 = load i32, i32* %23, align 4
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 133, i32 128
  store i32 %216, i32* %11, align 4
  br label %217

217:                                              ; preds = %212, %207
  %218 = load i32, i32* %19, align 4
  %219 = load i32*, i32** %6, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* @const0_rtx, align 4
  %221 = load i32*, i32** %7, align 8
  store i32 %220, i32* %221, align 4
  %222 = load i32, i32* @word_mode, align 4
  %223 = load i32*, i32** %9, align 8
  store i32 %222, i32* %223, align 4
  %224 = load i32, i32* %11, align 4
  %225 = load i32*, i32** %8, align 8
  store i32 %224, i32* %225, align 4
  %226 = load i32*, i32** %10, align 8
  store i32 0, i32* %226, align 4
  ret void
}

declare dso_local i32 @swap_condition(i32) #1

declare dso_local i32 @reverse_condition_maybe_unordered(i32) #1

declare dso_local i32 @GET_MODE(i32) #1

declare dso_local i64 @FLOAT_LIB_COMPARE_RETURNS_BOOL(i32, i32) #1

declare dso_local i32 @GET_MODE_WIDER_MODE(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @convert_to_mode(i32, i32, i32) #1

declare dso_local i32 @simplify_gen_relational(i32, i32, i32, i32, i32) #1

declare dso_local i32 @simplify_gen_ternary(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @start_sequence(...) #1

declare dso_local i32 @emit_library_call_value(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_insns(...) #1

declare dso_local i32 @end_sequence(...) #1

declare dso_local i32 @gen_reg_rtx(i32) #1

declare dso_local i32 @emit_libcall_block(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
