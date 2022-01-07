; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_ashr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_split_ashr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DImode = common dso_local global i32 0, align 4
@CONST_INT = common dso_local global i64 0, align 8
@TARGET_CMOVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ix86_split_ashr(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @DImode, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 32, i32 64
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @GET_CODE(i32 %18)
  %20 = load i64, i64* @CONST_INT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %165

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DImode, align 4
  %25 = icmp eq i32 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 (i32*, i32, i32*, i32*)* @split_di, i32 (i32*, i32, i32*, i32*)* @split_ti
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %31 = call i32 %27(i32* %28, i32 2, i32* %29, i32* %30)
  %32 = load i32*, i32** %4, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @INTVAL(i32 %34)
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 %36, 2
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, 2
  %43 = sub nsw i32 %42, 1
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %22
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @emit_move_insn(i32 %47, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @DImode, align 4
  %53 = icmp eq i32 %51, %52
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 (i32, i32, i32)* @gen_ashrsi3, i32 (i32, i32, i32)* @gen_ashrdi3
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub nsw i32 %60, 1
  %62 = call i32 @GEN_INT(i32 %61)
  %63 = call i32 %55(i32 %57, i32 %59, i32 %62)
  %64 = call i32 @emit_insn(i32 %63)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @emit_move_insn(i32 %66, i32 %68)
  br label %164

70:                                               ; preds = %22
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp sge i32 %71, %72
  br i1 %73, label %74, label %119

74:                                               ; preds = %70
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @emit_move_insn(i32 %76, i32 %78)
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @emit_move_insn(i32 %81, i32 %83)
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @DImode, align 4
  %87 = icmp eq i32 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 (i32, i32, i32)* @gen_ashrsi3, i32 (i32, i32, i32)* @gen_ashrdi3
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %10, align 4
  %95 = sub nsw i32 %94, 1
  %96 = call i32 @GEN_INT(i32 %95)
  %97 = call i32 %89(i32 %91, i32 %93, i32 %96)
  %98 = call i32 @emit_insn(i32 %97)
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %74
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @DImode, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 (i32, i32, i32)* @gen_ashrsi3, i32 (i32, i32, i32)* @gen_ashrdi3
  %108 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = sub nsw i32 %112, %113
  %115 = call i32 @GEN_INT(i32 %114)
  %116 = call i32 %107(i32 %109, i32 %111, i32 %115)
  %117 = call i32 @emit_insn(i32 %116)
  br label %118

118:                                              ; preds = %102, %74
  br label %163

119:                                              ; preds = %70
  %120 = load i32*, i32** %4, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %4, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @rtx_equal_p(i32 %122, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %119
  %129 = load i32*, i32** %4, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %4, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @emit_move_insn(i32 %131, i32 %134)
  br label %136

136:                                              ; preds = %128, %119
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @DImode, align 4
  %139 = icmp eq i32 %137, %138
  %140 = zext i1 %139 to i64
  %141 = select i1 %139, i32 (i32, i32, i32)* @gen_x86_shrd_1, i32 (i32, i32, i32)* @gen_x86_64_shrd
  %142 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i32 @GEN_INT(i32 %146)
  %148 = call i32 %141(i32 %143, i32 %145, i32 %147)
  %149 = call i32 @emit_insn(i32 %148)
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* @DImode, align 4
  %152 = icmp eq i32 %150, %151
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 (i32, i32, i32)* @gen_ashrsi3, i32 (i32, i32, i32)* @gen_ashrdi3
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @GEN_INT(i32 %159)
  %161 = call i32 %154(i32 %156, i32 %158, i32 %160)
  %162 = call i32 @emit_insn(i32 %161)
  br label %163

163:                                              ; preds = %136, %118
  br label %164

164:                                              ; preds = %163, %45
  br label %268

165:                                              ; preds = %3
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %4, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @rtx_equal_p(i32 %168, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %165
  %175 = load i32*, i32** %4, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @emit_move_insn(i32 %177, i32 %180)
  br label %182

182:                                              ; preds = %174, %165
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @DImode, align 4
  %185 = icmp eq i32 %183, %184
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 (i32*, i32, i32*, i32*)* @split_di, i32 (i32*, i32, i32*, i32*)* @split_ti
  %188 = load i32*, i32** %4, align 8
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %191 = call i32 %187(i32* %188, i32 1, i32* %189, i32* %190)
  %192 = load i32, i32* %6, align 4
  %193 = load i32, i32* @DImode, align 4
  %194 = icmp eq i32 %192, %193
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 (i32, i32, i32)* @gen_x86_shrd_1, i32 (i32, i32, i32)* @gen_x86_64_shrd
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %4, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = call i32 %196(i32 %198, i32 %200, i32 %203)
  %205 = call i32 @emit_insn(i32 %204)
  %206 = load i32, i32* %6, align 4
  %207 = load i32, i32* @DImode, align 4
  %208 = icmp eq i32 %206, %207
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 (i32, i32, i32)* @gen_ashrsi3, i32 (i32, i32, i32)* @gen_ashrdi3
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %4, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 2
  %217 = load i32, i32* %216, align 4
  %218 = call i32 %210(i32 %212, i32 %214, i32 %217)
  %219 = call i32 @emit_insn(i32 %218)
  %220 = load i64, i64* @TARGET_CMOVE, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %257

222:                                              ; preds = %182
  %223 = load i32, i32* %5, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %257

225:                                              ; preds = %222
  %226 = load i32, i32* %5, align 4
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @emit_move_insn(i32 %226, i32 %228)
  %230 = load i32, i32* %6, align 4
  %231 = load i32, i32* @DImode, align 4
  %232 = icmp eq i32 %230, %231
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 (i32, i32, i32)* @gen_ashrsi3, i32 (i32, i32, i32)* @gen_ashrdi3
  %235 = load i32, i32* %5, align 4
  %236 = load i32, i32* %5, align 4
  %237 = load i32, i32* %10, align 4
  %238 = sub nsw i32 %237, 1
  %239 = call i32 @GEN_INT(i32 %238)
  %240 = call i32 %234(i32 %235, i32 %236, i32 %239)
  %241 = call i32 @emit_insn(i32 %240)
  %242 = load i32, i32* %6, align 4
  %243 = load i32, i32* @DImode, align 4
  %244 = icmp eq i32 %242, %243
  %245 = zext i1 %244 to i64
  %246 = select i1 %244, i32 (i32, i32, i32, i32)* @gen_x86_shift_adj_1, i32 (i32, i32, i32, i32)* @gen_x86_64_shift_adj
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %4, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* %5, align 4
  %255 = call i32 %246(i32 %248, i32 %250, i32 %253, i32 %254)
  %256 = call i32 @emit_insn(i32 %255)
  br label %267

257:                                              ; preds = %222, %182
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %261 = load i32, i32* %260, align 4
  %262 = load i32*, i32** %4, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 2
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @gen_x86_shift_adj_3(i32 %259, i32 %261, i32 %264)
  %266 = call i32 @emit_insn(i32 %265)
  br label %267

267:                                              ; preds = %257, %225
  br label %268

268:                                              ; preds = %267, %164
  ret void
}

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @split_di(i32*, i32, i32*, i32*) #1

declare dso_local i32 @split_ti(i32*, i32, i32*, i32*) #1

declare dso_local i32 @INTVAL(i32) #1

declare dso_local i32 @emit_move_insn(i32, i32) #1

declare dso_local i32 @emit_insn(i32) #1

declare dso_local i32 @gen_ashrsi3(i32, i32, i32) #1

declare dso_local i32 @gen_ashrdi3(i32, i32, i32) #1

declare dso_local i32 @GEN_INT(i32) #1

declare dso_local i32 @rtx_equal_p(i32, i32) #1

declare dso_local i32 @gen_x86_shrd_1(i32, i32, i32) #1

declare dso_local i32 @gen_x86_64_shrd(i32, i32, i32) #1

declare dso_local i32 @gen_x86_shift_adj_1(i32, i32, i32, i32) #1

declare dso_local i32 @gen_x86_64_shift_adj(i32, i32, i32, i32) #1

declare dso_local i32 @gen_x86_shift_adj_3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
