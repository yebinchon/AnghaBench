; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_doubleword_mult.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_optabs.c_expand_doubleword_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WORDS_BIG_ENDIAN = common dso_local global i64 0, align 8
@NULL_RTX = common dso_local global i64 0, align 8
@BITS_PER_WORD = common dso_local global i64 0, align 8
@word_mode = common dso_local global i32 0, align 4
@lshr_optab = common dso_local global i32 0, align 4
@add_optab = common dso_local global i32 0, align 4
@OPTAB_DIRECT = common dso_local global i32 0, align 4
@ashr_optab = common dso_local global i32 0, align 4
@sub_optab = common dso_local global i32 0, align 4
@smul_optab = common dso_local global i32 0, align 4
@umul_widen_optab = common dso_local global i32 0, align 4
@smul_widen_optab = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i64, i64, i32, i32)* @expand_doubleword_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @expand_doubleword_mult(i32 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %25 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %14, align 4
  %29 = load i64, i64* @WORDS_BIG_ENDIAN, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 1
  store i32 %32, i32* %15, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %6
  %36 = load i64, i64* @NULL_RTX, align 8
  br label %41

37:                                               ; preds = %6
  %38 = load i64, i64* @BITS_PER_WORD, align 8
  %39 = sub nsw i64 %38, 1
  %40 = call i64 @GEN_INT(i64 %39)
  br label %41

41:                                               ; preds = %37, %35
  %42 = phi i64 [ %36, %35 ], [ %40, %37 ]
  store i64 %42, i64* %16, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @operand_subword_force(i64 %43, i32 %44, i32 %45)
  store i64 %46, i64* %21, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i64 @operand_subword_force(i64 %47, i32 %48, i32 %49)
  store i64 %50, i64* %22, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i64 @operand_subword_force(i64 %51, i32 %52, i32 %53)
  store i64 %54, i64* %23, align 8
  %55 = load i64, i64* %10, align 8
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @operand_subword_force(i64 %55, i32 %56, i32 %57)
  store i64 %58, i64* %24, align 8
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %105, label %61

61:                                               ; preds = %41
  %62 = load i32, i32* @word_mode, align 4
  %63 = load i32, i32* @lshr_optab, align 4
  %64 = load i64, i64* %22, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i64, i64* @NULL_RTX, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i64 @expand_binop(i32 %62, i32 %63, i64 %64, i64 %65, i64 %66, i32 1, i32 %67)
  store i64 %68, i64* %20, align 8
  %69 = load i64, i64* %20, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load i32, i32* @word_mode, align 4
  %73 = load i32, i32* @add_optab, align 4
  %74 = load i64, i64* %21, align 8
  %75 = load i64, i64* %20, align 8
  %76 = load i64, i64* @NULL_RTX, align 8
  %77 = load i32, i32* @OPTAB_DIRECT, align 4
  %78 = call i64 @expand_binop(i32 %72, i32 %73, i64 %74, i64 %75, i64 %76, i32 0, i32 %77)
  store i64 %78, i64* %21, align 8
  br label %99

79:                                               ; preds = %61
  %80 = load i32, i32* @word_mode, align 4
  %81 = load i32, i32* @ashr_optab, align 4
  %82 = load i64, i64* %22, align 8
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* @NULL_RTX, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i64 @expand_binop(i32 %80, i32 %81, i64 %82, i64 %83, i64 %84, i32 0, i32 %85)
  store i64 %86, i64* %20, align 8
  %87 = load i64, i64* %20, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %79
  %90 = load i64, i64* @NULL_RTX, align 8
  store i64 %90, i64* %7, align 8
  br label %240

91:                                               ; preds = %79
  %92 = load i32, i32* @word_mode, align 4
  %93 = load i32, i32* @sub_optab, align 4
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* %20, align 8
  %96 = load i64, i64* @NULL_RTX, align 8
  %97 = load i32, i32* @OPTAB_DIRECT, align 4
  %98 = call i64 @expand_binop(i32 %92, i32 %93, i64 %94, i64 %95, i64 %96, i32 0, i32 %97)
  store i64 %98, i64* %21, align 8
  br label %99

99:                                               ; preds = %91, %71
  %100 = load i64, i64* %21, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  %103 = load i64, i64* @NULL_RTX, align 8
  store i64 %103, i64* %7, align 8
  br label %240

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104, %41
  %106 = load i32, i32* @word_mode, align 4
  %107 = load i32, i32* @smul_optab, align 4
  %108 = load i64, i64* %21, align 8
  %109 = load i64, i64* %24, align 8
  %110 = load i64, i64* @NULL_RTX, align 8
  %111 = load i32, i32* @OPTAB_DIRECT, align 4
  %112 = call i64 @expand_binop(i32 %106, i32 %107, i64 %108, i64 %109, i64 %110, i32 0, i32 %111)
  store i64 %112, i64* %18, align 8
  %113 = load i64, i64* %18, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %105
  %116 = load i64, i64* @NULL_RTX, align 8
  store i64 %116, i64* %7, align 8
  br label %240

117:                                              ; preds = %105
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %164, label %120

120:                                              ; preds = %117
  %121 = load i32, i32* @word_mode, align 4
  %122 = load i32, i32* @lshr_optab, align 4
  %123 = load i64, i64* %24, align 8
  %124 = load i64, i64* %16, align 8
  %125 = load i64, i64* @NULL_RTX, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i64 @expand_binop(i32 %121, i32 %122, i64 %123, i64 %124, i64 %125, i32 1, i32 %126)
  store i64 %127, i64* %20, align 8
  %128 = load i64, i64* %20, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %138

130:                                              ; preds = %120
  %131 = load i32, i32* @word_mode, align 4
  %132 = load i32, i32* @add_optab, align 4
  %133 = load i64, i64* %23, align 8
  %134 = load i64, i64* %20, align 8
  %135 = load i64, i64* @NULL_RTX, align 8
  %136 = load i32, i32* @OPTAB_DIRECT, align 4
  %137 = call i64 @expand_binop(i32 %131, i32 %132, i64 %133, i64 %134, i64 %135, i32 0, i32 %136)
  store i64 %137, i64* %23, align 8
  br label %158

138:                                              ; preds = %120
  %139 = load i32, i32* @word_mode, align 4
  %140 = load i32, i32* @ashr_optab, align 4
  %141 = load i64, i64* %24, align 8
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* @NULL_RTX, align 8
  %144 = load i32, i32* %13, align 4
  %145 = call i64 @expand_binop(i32 %139, i32 %140, i64 %141, i64 %142, i64 %143, i32 0, i32 %144)
  store i64 %145, i64* %20, align 8
  %146 = load i64, i64* %20, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %150, label %148

148:                                              ; preds = %138
  %149 = load i64, i64* @NULL_RTX, align 8
  store i64 %149, i64* %7, align 8
  br label %240

150:                                              ; preds = %138
  %151 = load i32, i32* @word_mode, align 4
  %152 = load i32, i32* @sub_optab, align 4
  %153 = load i64, i64* %23, align 8
  %154 = load i64, i64* %20, align 8
  %155 = load i64, i64* @NULL_RTX, align 8
  %156 = load i32, i32* @OPTAB_DIRECT, align 4
  %157 = call i64 @expand_binop(i32 %151, i32 %152, i64 %153, i64 %154, i64 %155, i32 0, i32 %156)
  store i64 %157, i64* %23, align 8
  br label %158

158:                                              ; preds = %150, %130
  %159 = load i64, i64* %23, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %158
  %162 = load i64, i64* @NULL_RTX, align 8
  store i64 %162, i64* %7, align 8
  br label %240

163:                                              ; preds = %158
  br label %164

164:                                              ; preds = %163, %117
  %165 = load i32, i32* @word_mode, align 4
  %166 = load i32, i32* @smul_optab, align 4
  %167 = load i64, i64* %23, align 8
  %168 = load i64, i64* %22, align 8
  %169 = load i64, i64* @NULL_RTX, align 8
  %170 = load i32, i32* @OPTAB_DIRECT, align 4
  %171 = call i64 @expand_binop(i32 %165, i32 %166, i64 %167, i64 %168, i64 %169, i32 0, i32 %170)
  store i64 %171, i64* %20, align 8
  %172 = load i64, i64* %20, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %164
  %175 = load i64, i64* @NULL_RTX, align 8
  store i64 %175, i64* %7, align 8
  br label %240

176:                                              ; preds = %164
  %177 = load i32, i32* @word_mode, align 4
  %178 = load i32, i32* @add_optab, align 4
  %179 = load i64, i64* %18, align 8
  %180 = load i64, i64* %20, align 8
  %181 = load i64, i64* %18, align 8
  %182 = load i32, i32* @OPTAB_DIRECT, align 4
  %183 = call i64 @expand_binop(i32 %177, i32 %178, i64 %179, i64 %180, i64 %181, i32 0, i32 %182)
  store i64 %183, i64* %18, align 8
  %184 = load i64, i64* %11, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %176
  %187 = load i64, i64* %11, align 8
  %188 = call i64 @REG_P(i64 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %192, label %190

190:                                              ; preds = %186
  %191 = load i64, i64* @NULL_RTX, align 8
  store i64 %191, i64* %11, align 8
  br label %192

192:                                              ; preds = %190, %186, %176
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @umul_widen_optab, align 4
  %198 = load i64, i64* %22, align 8
  %199 = load i64, i64* %24, align 8
  %200 = load i64, i64* %11, align 8
  %201 = load i32, i32* @OPTAB_DIRECT, align 4
  %202 = call i64 @expand_binop(i32 %196, i32 %197, i64 %198, i64 %199, i64 %200, i32 1, i32 %201)
  store i64 %202, i64* %17, align 8
  br label %211

203:                                              ; preds = %192
  %204 = load i32, i32* %8, align 4
  %205 = load i32, i32* @smul_widen_optab, align 4
  %206 = load i64, i64* %22, align 8
  %207 = load i64, i64* %24, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load i32, i32* @OPTAB_DIRECT, align 4
  %210 = call i64 @expand_binop(i32 %204, i32 %205, i64 %206, i64 %207, i64 %208, i32 1, i32 %209)
  store i64 %210, i64* %17, align 8
  br label %211

211:                                              ; preds = %203, %195
  %212 = load i64, i64* %17, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = load i64, i64* @NULL_RTX, align 8
  store i64 %215, i64* %7, align 8
  br label %240

216:                                              ; preds = %211
  %217 = load i64, i64* %17, align 8
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* %8, align 4
  %220 = call i64 @operand_subword(i64 %217, i32 %218, i32 1, i32 %219)
  store i64 %220, i64* %19, align 8
  %221 = load i32, i32* @word_mode, align 4
  %222 = load i32, i32* @add_optab, align 4
  %223 = load i64, i64* %19, align 8
  %224 = load i64, i64* %18, align 8
  %225 = load i64, i64* %19, align 8
  %226 = call i64 @REG_P(i64 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %216
  %229 = load i64, i64* %19, align 8
  br label %232

230:                                              ; preds = %216
  %231 = load i64, i64* %18, align 8
  br label %232

232:                                              ; preds = %230, %228
  %233 = phi i64 [ %229, %228 ], [ %231, %230 ]
  %234 = load i32, i32* @OPTAB_DIRECT, align 4
  %235 = call i64 @expand_binop(i32 %221, i32 %222, i64 %223, i64 %224, i64 %233, i32 0, i32 %234)
  store i64 %235, i64* %18, align 8
  %236 = load i64, i64* %19, align 8
  %237 = load i64, i64* %18, align 8
  %238 = call i32 @emit_move_insn(i64 %236, i64 %237)
  %239 = load i64, i64* %17, align 8
  store i64 %239, i64* %7, align 8
  br label %240

240:                                              ; preds = %232, %214, %174, %161, %148, %115, %102, %89
  %241 = load i64, i64* %7, align 8
  ret i64 %241
}

declare dso_local i64 @GEN_INT(i64) #1

declare dso_local i64 @operand_subword_force(i64, i32, i32) #1

declare dso_local i64 @expand_binop(i32, i32, i64, i64, i64, i32, i32) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @operand_subword(i64, i32, i32, i32) #1

declare dso_local i32 @emit_move_insn(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
