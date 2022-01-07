; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_move_misalign.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_expand_vector_move_misalign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@optimize_size = common dso_local global i64 0, align 8
@V4SFmode = common dso_local global i32 0, align 4
@TARGET_SSE2 = common dso_local global i64 0, align 8
@MODE_VECTOR_INT = common dso_local global i64 0, align 8
@V16QImode = common dso_local global i32 0, align 4
@V2DFmode = common dso_local global i32 0, align 4
@TARGET_SSE_UNALIGNED_MOVE_OPTIMAL = common dso_local global i64 0, align 8
@TARGET_SSE_SPLIT_REGS = common dso_local global i64 0, align 8
@VOIDmode = common dso_local global i32 0, align 4
@DFmode = common dso_local global i32 0, align 4
@TARGET_SSE_PARTIAL_REG_DEPENDENCY = common dso_local global i64 0, align 8
@V2SFmode = common dso_local global i32 0, align 4
@TARGET_SSE_TYPELESS_STORES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_expand_vector_move_misalign(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @MEM_P(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %154

18:                                               ; preds = %2
  %19 = load i64, i64* @optimize_size, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i32, i32* @V4SFmode, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @gen_lowpart(i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* @V4SFmode, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @gen_lowpart(i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @gen_sse_movups(i32 %28, i32 %29)
  %31 = call i32 @emit_insn(i32 %30)
  br label %243

32:                                               ; preds = %18
  %33 = load i64, i64* @TARGET_SSE2, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = call i64 @GET_MODE_CLASS(i32 %36)
  %38 = load i64, i64* @MODE_VECTOR_INT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load i32, i32* @V16QImode, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @gen_lowpart(i32 %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @V16QImode, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @gen_lowpart(i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @gen_sse2_movdqu(i32 %47, i32 %48)
  %50 = call i32 @emit_insn(i32 %49)
  br label %243

51:                                               ; preds = %35, %32
  %52 = load i64, i64* @TARGET_SSE2, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %101

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @V2DFmode, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %101

58:                                               ; preds = %54
  %59 = load i64, i64* @TARGET_SSE_UNALIGNED_MOVE_OPTIMAL, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %58
  %62 = load i32, i32* @V2DFmode, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @gen_lowpart(i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @V2DFmode, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @gen_lowpart(i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @gen_sse2_movupd(i32 %68, i32 %69)
  %71 = call i32 @emit_insn(i32 %70)
  br label %243

72:                                               ; preds = %58
  %73 = load i64, i64* @TARGET_SSE_SPLIT_REGS, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* @VOIDmode, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @gen_rtx_CLOBBER(i32 %76, i32 %77)
  %79 = call i32 @emit_insn(i32 %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %8, align 4
  br label %84

81:                                               ; preds = %72
  %82 = load i32, i32* @V2DFmode, align 4
  %83 = call i32 @CONST0_RTX(i32 %82)
  store i32 %83, i32* %8, align 4
  br label %84

84:                                               ; preds = %81, %75
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @DFmode, align 4
  %87 = call i32 @adjust_address(i32 %85, i32 %86, i32 0)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @gen_sse2_loadlpd(i32 %88, i32 %89, i32 %90)
  %92 = call i32 @emit_insn(i32 %91)
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @DFmode, align 4
  %95 = call i32 @adjust_address(i32 %93, i32 %94, i32 8)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @gen_sse2_loadhpd(i32 %96, i32 %97, i32 %98)
  %100 = call i32 @emit_insn(i32 %99)
  br label %153

101:                                              ; preds = %54, %51
  %102 = load i64, i64* @TARGET_SSE_UNALIGNED_MOVE_OPTIMAL, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %115

104:                                              ; preds = %101
  %105 = load i32, i32* @V4SFmode, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @gen_lowpart(i32 %105, i32 %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* @V4SFmode, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @gen_lowpart(i32 %108, i32 %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @gen_sse_movups(i32 %111, i32 %112)
  %114 = call i32 @emit_insn(i32 %113)
  br label %243

115:                                              ; preds = %101
  %116 = load i64, i64* @TARGET_SSE_PARTIAL_REG_DEPENDENCY, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %115
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @CONST0_RTX(i32 %120)
  %122 = call i32 @emit_move_insn(i32 %119, i32 %121)
  br label %128

123:                                              ; preds = %115
  %124 = load i32, i32* @VOIDmode, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @gen_rtx_CLOBBER(i32 %124, i32 %125)
  %127 = call i32 @emit_insn(i32 %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load i32, i32* %3, align 4
  %130 = load i32, i32* @V4SFmode, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* @V4SFmode, align 4
  %134 = load i32, i32* %5, align 4
  %135 = call i32 @gen_lowpart(i32 %133, i32 %134)
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %132, %128
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @V2SFmode, align 4
  %139 = call i32 @adjust_address(i32 %137, i32 %138, i32 0)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @gen_sse_loadlps(i32 %140, i32 %141, i32 %142)
  %144 = call i32 @emit_insn(i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @V2SFmode, align 4
  %147 = call i32 @adjust_address(i32 %145, i32 %146, i32 8)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @gen_sse_loadhps(i32 %148, i32 %149, i32 %150)
  %152 = call i32 @emit_insn(i32 %151)
  br label %153

153:                                              ; preds = %136, %84
  br label %243

154:                                              ; preds = %2
  %155 = load i32, i32* %5, align 4
  %156 = call i64 @MEM_P(i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %240

158:                                              ; preds = %154
  %159 = load i64, i64* @optimize_size, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %158
  %162 = load i32, i32* @V4SFmode, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @gen_lowpart(i32 %162, i32 %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* @V4SFmode, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @gen_lowpart(i32 %165, i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @gen_sse_movups(i32 %168, i32 %169)
  %171 = call i32 @emit_insn(i32 %170)
  br label %243

172:                                              ; preds = %158
  %173 = load i64, i64* @TARGET_SSE2, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %172
  %176 = load i32, i32* @TARGET_SSE_TYPELESS_STORES, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %194, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %3, align 4
  %180 = call i64 @GET_MODE_CLASS(i32 %179)
  %181 = load i64, i64* @MODE_VECTOR_INT, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %194

183:                                              ; preds = %178
  %184 = load i32, i32* @V16QImode, align 4
  %185 = load i32, i32* %5, align 4
  %186 = call i32 @gen_lowpart(i32 %184, i32 %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* @V16QImode, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @gen_lowpart(i32 %187, i32 %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %5, align 4
  %191 = load i32, i32* %6, align 4
  %192 = call i32 @gen_sse2_movdqu(i32 %190, i32 %191)
  %193 = call i32 @emit_insn(i32 %192)
  br label %243

194:                                              ; preds = %178, %175, %172
  %195 = load i64, i64* @TARGET_SSE2, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %194
  %198 = load i32, i32* %3, align 4
  %199 = load i32, i32* @V2DFmode, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %197
  %202 = load i32, i32* %5, align 4
  %203 = load i32, i32* @DFmode, align 4
  %204 = call i32 @adjust_address(i32 %202, i32 %203, i32 0)
  store i32 %204, i32* %7, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i32 @gen_sse2_storelpd(i32 %205, i32 %206)
  %208 = call i32 @emit_insn(i32 %207)
  %209 = load i32, i32* %5, align 4
  %210 = load i32, i32* @DFmode, align 4
  %211 = call i32 @adjust_address(i32 %209, i32 %210, i32 8)
  store i32 %211, i32* %7, align 4
  %212 = load i32, i32* %7, align 4
  %213 = load i32, i32* %6, align 4
  %214 = call i32 @gen_sse2_storehpd(i32 %212, i32 %213)
  %215 = call i32 @emit_insn(i32 %214)
  br label %239

216:                                              ; preds = %197, %194
  %217 = load i32, i32* %3, align 4
  %218 = load i32, i32* @V4SFmode, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load i32, i32* @V4SFmode, align 4
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @gen_lowpart(i32 %221, i32 %222)
  store i32 %223, i32* %6, align 4
  br label %224

224:                                              ; preds = %220, %216
  %225 = load i32, i32* %5, align 4
  %226 = load i32, i32* @V2SFmode, align 4
  %227 = call i32 @adjust_address(i32 %225, i32 %226, i32 0)
  store i32 %227, i32* %7, align 4
  %228 = load i32, i32* %7, align 4
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @gen_sse_storelps(i32 %228, i32 %229)
  %231 = call i32 @emit_insn(i32 %230)
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* @V2SFmode, align 4
  %234 = call i32 @adjust_address(i32 %232, i32 %233, i32 8)
  store i32 %234, i32* %7, align 4
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* %6, align 4
  %237 = call i32 @gen_sse_storehps(i32 %235, i32 %236)
  %238 = call i32 @emit_insn(i32 %237)
  br label %239

239:                                              ; preds = %224, %201
  br label %242

240:                                              ; preds = %154
  %241 = call i32 (...) @gcc_unreachable()
  br label %242

242:                                              ; preds = %240, %239
  br label %243

243:                                              ; preds = %21, %40, %61, %104, %161, %183, %242, %153
  ret void
}

declare dso_local i64 @MEM_P(i32) #1

declare dso_local i32 @gen_lowpart(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_sse_movups(i32, i32) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i32 @gen_sse2_movdqu(i32, i32) #1

declare dso_local i32 @gen_sse2_movupd(i32, i32) #1

declare dso_local i32 @gen_rtx_CLOBBER(i32, i32) #1

declare dso_local i32 @CONST0_RTX(i32) #1

declare dso_local i32 @adjust_address(i32, i32, i32) #1

declare dso_local i32 @gen_sse2_loadlpd(i32, i32, i32) #1

declare dso_local i32 @gen_sse2_loadhpd(i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @gen_sse_loadlps(i32, i32, i32) #1

declare dso_local i32 @gen_sse_loadhps(i32, i32, i32) #1

declare dso_local i32 @gen_sse2_storelpd(i32, i32) #1

declare dso_local i32 @gen_sse2_storehpd(i32, i32) #1

declare dso_local i32 @gen_sse_storelps(i32, i32) #1

declare dso_local i32 @gen_sse_storehps(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
