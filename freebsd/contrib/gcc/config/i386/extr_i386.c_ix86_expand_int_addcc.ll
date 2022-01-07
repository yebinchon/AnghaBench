; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_int_addcc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_int_addcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@const0_rtx = common dso_local global i64 0, align 8
@const1_rtx = common dso_local global i64 0, align 8
@constm1_rtx = common dso_local global i64 0, align 8
@ix86_compare_op0 = common dso_local global i32 0, align 4
@ix86_compare_op1 = common dso_local global i32 0, align 4
@CCFPmode = common dso_local global i64 0, align 8
@CCFPUmode = common dso_local global i64 0, align 8
@LTU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ix86_expand_int_addcc(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  %9 = load i64*, i64** %3, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @GET_CODE(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i64, i64* @const0_rtx, align 8
  store i64 %13, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i64*, i64** %3, align 8
  %15 = getelementptr inbounds i64, i64* %14, i64 0
  %16 = load i64, i64* %15, align 8
  %17 = call i64 @GET_MODE(i64 %16)
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i64*, i64** %3, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 3
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @const1_rtx, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load i64*, i64** %3, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 3
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @constm1_rtx, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %196

31:                                               ; preds = %24, %1
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @ix86_compare_op0, align 4
  %34 = load i32, i32* @ix86_compare_op1, align 4
  %35 = call i32 @ix86_expand_carry_flag_compare(i32 %32, i32 %33, i32 %34, i64* %5)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %196

38:                                               ; preds = %31
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @GET_CODE(i64 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @XEXP(i64 %41, i32 0)
  %43 = call i64 @GET_MODE(i64 %42)
  %44 = load i64, i64* @CCFPmode, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @XEXP(i64 %47, i32 0)
  %49 = call i64 @GET_MODE(i64 %48)
  %50 = load i64, i64* @CCFPUmode, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %38
  store i32 1, i32* %7, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ix86_fp_compare_code_to_integer(i32 %53)
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %46
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @LTU, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load i64, i64* @constm1_rtx, align 8
  store i64 %60, i64* %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @GET_CODE(i64 %65)
  %67 = call i32 @reverse_condition_maybe_unordered(i32 %66)
  %68 = call i32 @PUT_CODE(i64 %64, i32 %67)
  br label %75

69:                                               ; preds = %59
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = call i32 @GET_CODE(i64 %71)
  %73 = call i32 @reverse_condition(i32 %72)
  %74 = call i32 @PUT_CODE(i64 %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %63
  br label %76

76:                                               ; preds = %75, %55
  %77 = load i64, i64* %5, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @PUT_MODE(i64 %77, i32 %78)
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @LTU, align 4
  %82 = icmp eq i32 %80, %81
  %83 = zext i1 %82 to i32
  %84 = load i64*, i64** %3, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 3
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @constm1_rtx, align 8
  %88 = icmp eq i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = icmp eq i32 %83, %89
  br i1 %90, label %91, label %143

91:                                               ; preds = %76
  %92 = load i64*, i64** %3, align 8
  %93 = getelementptr inbounds i64, i64* %92, i64 0
  %94 = load i64, i64* %93, align 8
  %95 = call i64 @GET_MODE(i64 %94)
  switch i64 %95, label %140 [
    i64 129, label %96
    i64 130, label %107
    i64 128, label %118
    i64 131, label %129
  ]

96:                                               ; preds = %91
  %97 = load i64*, i64** %3, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64*, i64** %3, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %6, align 8
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @gen_subqi3_carry(i64 %99, i64 %102, i64 %103, i64 %104)
  %106 = call i32 @emit_insn(i32 %105)
  br label %142

107:                                              ; preds = %91
  %108 = load i64*, i64** %3, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64*, i64** %3, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 2
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %5, align 8
  %116 = call i32 @gen_subhi3_carry(i64 %110, i64 %113, i64 %114, i64 %115)
  %117 = call i32 @emit_insn(i32 %116)
  br label %142

118:                                              ; preds = %91
  %119 = load i64*, i64** %3, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64*, i64** %3, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %6, align 8
  %126 = load i64, i64* %5, align 8
  %127 = call i32 @gen_subsi3_carry(i64 %121, i64 %124, i64 %125, i64 %126)
  %128 = call i32 @emit_insn(i32 %127)
  br label %142

129:                                              ; preds = %91
  %130 = load i64*, i64** %3, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %3, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* %5, align 8
  %138 = call i32 @gen_subdi3_carry_rex64(i64 %132, i64 %135, i64 %136, i64 %137)
  %139 = call i32 @emit_insn(i32 %138)
  br label %142

140:                                              ; preds = %91
  %141 = call i32 (...) @gcc_unreachable()
  br label %142

142:                                              ; preds = %140, %129, %118, %107, %96
  br label %195

143:                                              ; preds = %76
  %144 = load i64*, i64** %3, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  %147 = call i64 @GET_MODE(i64 %146)
  switch i64 %147, label %192 [
    i64 129, label %148
    i64 130, label %159
    i64 128, label %170
    i64 131, label %181
  ]

148:                                              ; preds = %143
  %149 = load i64*, i64** %3, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %3, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* %6, align 8
  %156 = load i64, i64* %5, align 8
  %157 = call i32 @gen_addqi3_carry(i64 %151, i64 %154, i64 %155, i64 %156)
  %158 = call i32 @emit_insn(i32 %157)
  br label %194

159:                                              ; preds = %143
  %160 = load i64*, i64** %3, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** %3, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 2
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* %5, align 8
  %168 = call i32 @gen_addhi3_carry(i64 %162, i64 %165, i64 %166, i64 %167)
  %169 = call i32 @emit_insn(i32 %168)
  br label %194

170:                                              ; preds = %143
  %171 = load i64*, i64** %3, align 8
  %172 = getelementptr inbounds i64, i64* %171, i64 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %3, align 8
  %175 = getelementptr inbounds i64, i64* %174, i64 2
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* %6, align 8
  %178 = load i64, i64* %5, align 8
  %179 = call i32 @gen_addsi3_carry(i64 %173, i64 %176, i64 %177, i64 %178)
  %180 = call i32 @emit_insn(i32 %179)
  br label %194

181:                                              ; preds = %143
  %182 = load i64*, i64** %3, align 8
  %183 = getelementptr inbounds i64, i64* %182, i64 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64*, i64** %3, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 2
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* %6, align 8
  %189 = load i64, i64* %5, align 8
  %190 = call i32 @gen_adddi3_carry_rex64(i64 %184, i64 %187, i64 %188, i64 %189)
  %191 = call i32 @emit_insn(i32 %190)
  br label %194

192:                                              ; preds = %143
  %193 = call i32 (...) @gcc_unreachable()
  br label %194

194:                                              ; preds = %192, %181, %170, %159, %148
  br label %195

195:                                              ; preds = %194, %142
  store i32 1, i32* %2, align 4
  br label %196

196:                                              ; preds = %195, %37, %30
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i32 @ix86_expand_carry_flag_compare(i32, i32, i32, i64*) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @ix86_fp_compare_code_to_integer(i32) #1

declare dso_local i32 @PUT_CODE(i64, i32) #1

declare dso_local i32 @reverse_condition_maybe_unordered(i32) #1

declare dso_local i32 @reverse_condition(i32) #1

declare dso_local i32 @PUT_MODE(i64, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_subqi3_carry(i64, i64, i64, i64) #1

declare dso_local i32 @gen_subhi3_carry(i64, i64, i64, i64) #1

declare dso_local i32 @gen_subsi3_carry(i64, i64, i64, i64) #1

declare dso_local i32 @gen_subdi3_carry_rex64(i64, i64, i64, i64) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @gen_addqi3_carry(i64, i64, i64, i64) #1

declare dso_local i32 @gen_addhi3_carry(i64, i64, i64, i64) #1

declare dso_local i32 @gen_addsi3_carry(i64, i64, i64, i64) #1

declare dso_local i32 @gen_adddi3_carry_rex64(i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
