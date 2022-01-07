; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_count_reg_usage.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cse.c_count_reg_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_RTX = common dso_local global i64 0, align 8
@flag_non_call_exceptions = common dso_local global i32 0, align 4
@pc_rtx = common dso_local global i64 0, align 8
@REG_EQUAL = common dso_local global i32 0, align 4
@REG_NONNEG = common dso_local global i32 0, align 4
@USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i64, i32)* @count_reg_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_reg_usage(i64 %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %251

18:                                               ; preds = %4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @GET_CODE(i64 %19)
  store i32 %20, i32* %9, align 4
  switch i32 %20, label %193 [
    i32 130, label %21
    i32 131, label %34
    i32 142, label %34
    i32 140, label %34
    i32 138, label %34
    i32 139, label %34
    i32 137, label %34
    i32 128, label %34
    i32 132, label %34
    i32 141, label %35
    i32 129, label %48
    i32 143, label %73
    i32 135, label %73
    i32 133, label %73
    i32 136, label %134
    i32 144, label %167
    i32 134, label %191
  ]

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32, i32* %8, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @REGNO(i64 %28)
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, %26
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %25, %21
  br label %251

34:                                               ; preds = %18, %18, %18, %18, %18, %18, %18, %18
  br label %251

35:                                               ; preds = %18
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @XEXP(i64 %36, i32 0)
  %38 = call i32 @MEM_P(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i64, i64* %5, align 8
  %42 = call i64 @XEXP(i64 %41, i32 0)
  %43 = call i64 @XEXP(i64 %42, i32 0)
  %44 = load i32*, i32** %6, align 8
  %45 = load i64, i64* @NULL_RTX, align 8
  %46 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %43, i32* %44, i64 %45, i32 %46)
  br label %47

47:                                               ; preds = %40, %35
  br label %251

48:                                               ; preds = %18
  %49 = load i64, i64* %5, align 8
  %50 = call i64 @SET_DEST(i64 %49)
  %51 = call i32 @REG_P(i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @SET_DEST(i64 %54)
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* @NULL_RTX, align 8
  %58 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %55, i32* %56, i64 %57, i32 %58)
  br label %59

59:                                               ; preds = %53, %48
  %60 = load i64, i64* %5, align 8
  %61 = call i64 @SET_SRC(i64 %60)
  %62 = load i32*, i32** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %59
  %66 = load i64, i64* %7, align 8
  br label %70

67:                                               ; preds = %59
  %68 = load i64, i64* %5, align 8
  %69 = call i64 @SET_DEST(i64 %68)
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i64 [ %66, %65 ], [ %69, %67 ]
  %72 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %61, i32* %62, i64 %71, i32 %72)
  br label %251

73:                                               ; preds = %18, %18, %18
  %74 = load i32, i32* @flag_non_call_exceptions, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i64, i64* %5, align 8
  %78 = call i64 @PATTERN(i64 %77)
  %79 = call i32 @may_trap_p(i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i64, i64* @pc_rtx, align 8
  store i64 %82, i64* %7, align 8
  br label %83

83:                                               ; preds = %81, %76, %73
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 143
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i64, i64* %5, align 8
  %88 = call i64 @CALL_INSN_FUNCTION_USAGE(i64 %87)
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %88, i32* %89, i64 %90, i32 %91)
  br label %92

92:                                               ; preds = %86, %83
  %93 = load i64, i64* %5, align 8
  %94 = call i64 @PATTERN(i64 %93)
  %95 = load i32*, i32** %6, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %94, i32* %95, i64 %96, i32 %97)
  %98 = load i64, i64* %5, align 8
  %99 = call i64 @find_reg_equal_equiv_note(i64 %98)
  store i64 %99, i64* %10, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %133

102:                                              ; preds = %92
  %103 = load i64, i64* %10, align 8
  %104 = call i64 @XEXP(i64 %103, i32 0)
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = call i32 @GET_CODE(i64 %105)
  %107 = icmp eq i32 %106, 136
  br i1 %107, label %108, label %127

108:                                              ; preds = %102
  br label %109

109:                                              ; preds = %124, %108
  %110 = load i64, i64* %14, align 8
  %111 = call i64 @XEXP(i64 %110, i32 0)
  %112 = load i32*, i32** %6, align 8
  %113 = load i64, i64* %7, align 8
  %114 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %111, i32* %112, i64 %113, i32 %114)
  %115 = load i64, i64* %14, align 8
  %116 = call i64 @XEXP(i64 %115, i32 1)
  store i64 %116, i64* %14, align 8
  br label %117

117:                                              ; preds = %109
  %118 = load i64, i64* %14, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i64, i64* %14, align 8
  %122 = call i32 @GET_CODE(i64 %121)
  %123 = icmp eq i32 %122, 136
  br label %124

124:                                              ; preds = %120, %117
  %125 = phi i1 [ false, %117 ], [ %123, %120 ]
  br i1 %125, label %109, label %126

126:                                              ; preds = %124
  br label %132

127:                                              ; preds = %102
  %128 = load i64, i64* %14, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = load i64, i64* %7, align 8
  %131 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %128, i32* %129, i64 %130, i32 %131)
  br label %132

132:                                              ; preds = %127, %126
  br label %133

133:                                              ; preds = %132, %92
  br label %251

134:                                              ; preds = %18
  %135 = load i64, i64* %5, align 8
  %136 = call i32 @REG_NOTE_KIND(i64 %135)
  %137 = load i32, i32* @REG_EQUAL, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %155, label %139

139:                                              ; preds = %134
  %140 = load i64, i64* %5, align 8
  %141 = call i32 @REG_NOTE_KIND(i64 %140)
  %142 = load i32, i32* @REG_NONNEG, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i64, i64* %5, align 8
  %146 = call i64 @XEXP(i64 %145, i32 0)
  %147 = call i32 @GET_CODE(i64 %146)
  %148 = load i32, i32* @USE, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %155, label %150

150:                                              ; preds = %144, %139
  %151 = load i64, i64* %5, align 8
  %152 = call i64 @XEXP(i64 %151, i32 0)
  %153 = call i32 @GET_CODE(i64 %152)
  %154 = icmp eq i32 %153, 141
  br i1 %154, label %155, label %161

155:                                              ; preds = %150, %144, %134
  %156 = load i64, i64* %5, align 8
  %157 = call i64 @XEXP(i64 %156, i32 0)
  %158 = load i32*, i32** %6, align 8
  %159 = load i64, i64* @NULL_RTX, align 8
  %160 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %157, i32* %158, i64 %159, i32 %160)
  br label %161

161:                                              ; preds = %155, %150
  %162 = load i64, i64* %5, align 8
  %163 = call i64 @XEXP(i64 %162, i32 1)
  %164 = load i32*, i32** %6, align 8
  %165 = load i64, i64* @NULL_RTX, align 8
  %166 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %163, i32* %164, i64 %165, i32 %166)
  br label %251

167:                                              ; preds = %18
  %168 = load i64, i64* %5, align 8
  %169 = call i32 @MEM_VOLATILE_P(i64 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %167
  %172 = load i64, i64* @NULL_RTX, align 8
  store i64 %172, i64* %7, align 8
  br label %173

173:                                              ; preds = %171, %167
  %174 = load i64, i64* %5, align 8
  %175 = call i32 @ASM_OPERANDS_INPUT_LENGTH(i64 %174)
  %176 = sub nsw i32 %175, 1
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %187, %173
  %178 = load i32, i32* %12, align 4
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %177
  %181 = load i64, i64* %5, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i64 @ASM_OPERANDS_INPUT(i64 %181, i32 %182)
  %184 = load i32*, i32** %6, align 8
  %185 = load i64, i64* %7, align 8
  %186 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %183, i32* %184, i64 %185, i32 %186)
  br label %187

187:                                              ; preds = %180
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, -1
  store i32 %189, i32* %12, align 4
  br label %177

190:                                              ; preds = %177
  br label %251

191:                                              ; preds = %18
  %192 = call i32 (...) @gcc_unreachable()
  br label %193

193:                                              ; preds = %18, %191
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %9, align 4
  %196 = call i8* @GET_RTX_FORMAT(i32 %195)
  store i8* %196, i8** %11, align 8
  %197 = load i32, i32* %9, align 4
  %198 = call i32 @GET_RTX_LENGTH(i32 %197)
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %12, align 4
  br label %200

200:                                              ; preds = %248, %194
  %201 = load i32, i32* %12, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %251

203:                                              ; preds = %200
  %204 = load i8*, i8** %11, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i8, i8* %204, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 101
  br i1 %210, label %211, label %218

211:                                              ; preds = %203
  %212 = load i64, i64* %5, align 8
  %213 = load i32, i32* %12, align 4
  %214 = call i64 @XEXP(i64 %212, i32 %213)
  %215 = load i32*, i32** %6, align 8
  %216 = load i64, i64* %7, align 8
  %217 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %214, i32* %215, i64 %216, i32 %217)
  br label %247

218:                                              ; preds = %203
  %219 = load i8*, i8** %11, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i8, i8* %219, i64 %221
  %223 = load i8, i8* %222, align 1
  %224 = sext i8 %223 to i32
  %225 = icmp eq i32 %224, 69
  br i1 %225, label %226, label %246

226:                                              ; preds = %218
  %227 = load i64, i64* %5, align 8
  %228 = load i32, i32* %12, align 4
  %229 = call i32 @XVECLEN(i64 %227, i32 %228)
  %230 = sub nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  br label %231

231:                                              ; preds = %242, %226
  %232 = load i32, i32* %13, align 4
  %233 = icmp sge i32 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %231
  %235 = load i64, i64* %5, align 8
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %13, align 4
  %238 = call i64 @XVECEXP(i64 %235, i32 %236, i32 %237)
  %239 = load i32*, i32** %6, align 8
  %240 = load i64, i64* %7, align 8
  %241 = load i32, i32* %8, align 4
  call void @count_reg_usage(i64 %238, i32* %239, i64 %240, i32 %241)
  br label %242

242:                                              ; preds = %234
  %243 = load i32, i32* %13, align 4
  %244 = add nsw i32 %243, -1
  store i32 %244, i32* %13, align 4
  br label %231

245:                                              ; preds = %231
  br label %246

246:                                              ; preds = %245, %218
  br label %247

247:                                              ; preds = %246, %211
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %12, align 4
  %250 = add nsw i32 %249, -1
  store i32 %250, i32* %12, align 4
  br label %200

251:                                              ; preds = %17, %33, %34, %47, %70, %133, %161, %190, %200
  ret void
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @REGNO(i64) #1

declare dso_local i32 @MEM_P(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @REG_P(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i32 @may_trap_p(i64) #1

declare dso_local i64 @PATTERN(i64) #1

declare dso_local i64 @CALL_INSN_FUNCTION_USAGE(i64) #1

declare dso_local i64 @find_reg_equal_equiv_note(i64) #1

declare dso_local i32 @REG_NOTE_KIND(i64) #1

declare dso_local i32 @MEM_VOLATILE_P(i64) #1

declare dso_local i32 @ASM_OPERANDS_INPUT_LENGTH(i64) #1

declare dso_local i64 @ASM_OPERANDS_INPUT(i64, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i8* @GET_RTX_FORMAT(i32) #1

declare dso_local i32 @GET_RTX_LENGTH(i32) #1

declare dso_local i32 @XVECLEN(i64, i32) #1

declare dso_local i64 @XVECEXP(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
