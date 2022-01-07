; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_cirrus_reorg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/arm/extr_arm.c_cirrus_reorg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JUMP_INSN = common dso_local global i64 0, align 8
@RETURN = common dso_local global i64 0, align 8
@PARALLEL = common dso_local global i64 0, align 8
@SET = common dso_local global i64 0, align 8
@CIRRUS_DOUBLE = common dso_local global i64 0, align 8
@REG = common dso_local global i64 0, align 8
@FLOAT = common dso_local global i64 0, align 8
@CIRRUS_MOVE = common dso_local global i64 0, align 8
@INSN = common dso_local global i64 0, align 8
@USE = common dso_local global i64 0, align 8
@CLOBBER = common dso_local global i64 0, align 8
@CIRRUS_COMPARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cirrus_reorg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cirrus_reorg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @PATTERN(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @GET_CODE(i32 %12)
  %14 = load i64, i64* @JUMP_INSN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @GET_CODE(i32 %17)
  %19 = load i64, i64* @RETURN, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %48

21:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @next_nonnote_insn(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @arm_cirrus_insn_p(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @next_nonnote_insn(i32 %31)
  %33 = call i64 @arm_cirrus_insn_p(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %35, %30
  br label %39

39:                                               ; preds = %43, %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %6, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = call i32 (...) @gen_nop()
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @emit_insn_after(i32 %44, i32 %45)
  br label %39

47:                                               ; preds = %39
  br label %213

48:                                               ; preds = %16, %1
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @GET_CODE(i32 %49)
  %51 = load i64, i64* @PARALLEL, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @XVECLEN(i32 %54, i32 0)
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @XVECEXP(i32 %58, i32 0, i32 0)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %53, %48
  %61 = load i32, i32* %4, align 4
  %62 = call i64 @GET_CODE(i32 %61)
  %63 = load i64, i64* @SET, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %158

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @XEXP(i32 %66, i32 0)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @XEXP(i32 %68, i32 1)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %2, align 4
  %71 = call i64 @get_attr_cirrus(i32 %70)
  %72 = load i64, i64* @CIRRUS_DOUBLE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %65
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @next_nonnote_insn(i32 %75)
  %77 = call i64 @arm_cirrus_insn_p(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = call i32 (...) @gen_nop()
  %81 = load i32, i32* %2, align 4
  %82 = call i32 @emit_insn_after(i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %74
  br label %213

84:                                               ; preds = %65
  %85 = load i32, i32* %2, align 4
  %86 = call i64 @arm_memory_load_p(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %156

88:                                               ; preds = %84
  %89 = load i32, i32* %7, align 4
  %90 = call i64 @GET_CODE(i32 %89)
  %91 = load i64, i64* @REG, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @REGNO(i32 %94)
  store i32 %95, i32* %9, align 4
  br label %105

96:                                               ; preds = %88
  %97 = load i32, i32* %8, align 4
  %98 = call i64 @GET_CODE(i32 %97)
  %99 = load i64, i64* @REG, align 8
  %100 = icmp eq i64 %98, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @gcc_assert(i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @REGNO(i32 %103)
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %96, %93
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @next_nonnote_insn(i32 %106)
  store i32 %107, i32* %2, align 4
  %108 = load i32, i32* %2, align 4
  %109 = call i64 @arm_cirrus_insn_p(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %213

112:                                              ; preds = %105
  %113 = load i32, i32* %2, align 4
  %114 = call i32 @PATTERN(i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i64 @GET_CODE(i32 %115)
  %117 = load i64, i64* @PARALLEL, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %112
  %120 = load i32, i32* %4, align 4
  %121 = call i64 @XVECLEN(i32 %120, i32 0)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %119
  %124 = load i32, i32* %4, align 4
  %125 = call i32 @XVECEXP(i32 %124, i32 0, i32 0)
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %123, %119, %112
  %127 = load i32, i32* %4, align 4
  %128 = call i64 @GET_CODE(i32 %127)
  %129 = load i64, i64* @FLOAT, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @XEXP(i32 %132, i32 0)
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %131, %126
  %135 = load i32, i32* %2, align 4
  %136 = call i64 @get_attr_cirrus(i32 %135)
  %137 = load i64, i64* @CIRRUS_MOVE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %155

139:                                              ; preds = %134
  %140 = load i32, i32* %4, align 4
  %141 = call i32 @XEXP(i32 %140, i32 1)
  %142 = call i64 @GET_CODE(i32 %141)
  %143 = load i64, i64* @REG, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %139
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %4, align 4
  %148 = call i32 @XEXP(i32 %147, i32 1)
  %149 = call i32 @REGNO(i32 %148)
  %150 = icmp eq i32 %146, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  %152 = call i32 (...) @gen_nop()
  %153 = load i32, i32* %2, align 4
  %154 = call i32 @emit_insn_after(i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %145, %139, %134
  br label %213

156:                                              ; preds = %84
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %60
  %159 = load i32, i32* %2, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %158
  %162 = load i32, i32* %2, align 4
  %163 = call i64 @GET_CODE(i32 %162)
  %164 = load i64, i64* @INSN, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %178, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* %2, align 4
  %168 = call i32 @PATTERN(i32 %167)
  %169 = call i64 @GET_CODE(i32 %168)
  %170 = load i64, i64* @USE, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %178, label %172

172:                                              ; preds = %166
  %173 = load i32, i32* %2, align 4
  %174 = call i32 @PATTERN(i32 %173)
  %175 = call i64 @GET_CODE(i32 %174)
  %176 = load i64, i64* @CLOBBER, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %172, %166, %161, %158
  br label %213

179:                                              ; preds = %172
  %180 = load i32, i32* %2, align 4
  %181 = call i64 @get_attr_cirrus(i32 %180)
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* %3, align 4
  %184 = load i32, i32* @CIRRUS_COMPARE, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %213

186:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  %187 = load i32, i32* %2, align 4
  %188 = call i32 @next_nonnote_insn(i32 %187)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = call i64 @arm_cirrus_insn_p(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load i32, i32* %6, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %192, %186
  %196 = load i32, i32* %5, align 4
  %197 = call i32 @next_nonnote_insn(i32 %196)
  %198 = call i64 @arm_cirrus_insn_p(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %200, %195
  br label %204

204:                                              ; preds = %208, %203
  %205 = load i32, i32* %6, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %6, align 4
  %207 = icmp ne i32 %205, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = call i32 (...) @gen_nop()
  %210 = load i32, i32* %2, align 4
  %211 = call i32 @emit_insn_after(i32 %209, i32 %210)
  br label %204

212:                                              ; preds = %204
  br label %213

213:                                              ; preds = %47, %83, %111, %155, %178, %212, %179
  ret void
}

declare dso_local i32 @PATTERN(i32) #1

declare dso_local i64 @GET_CODE(i32) #1

declare dso_local i32 @next_nonnote_insn(i32) #1

declare dso_local i64 @arm_cirrus_insn_p(i32) #1

declare dso_local i32 @emit_insn_after(i32, i32) #1

declare dso_local i32 @gen_nop(...) #1

declare dso_local i64 @XVECLEN(i32, i32) #1

declare dso_local i32 @XVECEXP(i32, i32, i32) #1

declare dso_local i32 @XEXP(i32, i32) #1

declare dso_local i64 @get_attr_cirrus(i32) #1

declare dso_local i64 @arm_memory_load_p(i32) #1

declare dso_local i32 @REGNO(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
