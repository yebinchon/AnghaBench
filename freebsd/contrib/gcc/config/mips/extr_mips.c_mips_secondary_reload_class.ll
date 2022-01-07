; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_secondary_reload_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/mips/extr_mips.c_mips_secondary_reload_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TARGET_MIPS16 = common dso_local global i64 0, align 8
@M16_REGS = common dso_local global i32 0, align 4
@GR_REGS = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i64 0, align 8
@LEA_REGS = common dso_local global i32 0, align 4
@reg_class_contents = common dso_local global i32* null, align 8
@ACC_REGS = common dso_local global i32 0, align 4
@NO_REGS = common dso_local global i32 0, align 4
@ST_REGS = common dso_local global i32 0, align 4
@FP_REGS = common dso_local global i32 0, align 4
@MODE_FLOAT = common dso_local global i64 0, align 8
@M16_NA_REGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mips_secondary_reload_class(i32 %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* @TARGET_MIPS16, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @M16_REGS, align 4
  br label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @GR_REGS, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @REG_P(i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load i64, i64* %8, align 8
  %26 = call i64 @GET_CODE(i64 %25)
  %27 = load i64, i64* @SUBREG, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %19
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @true_regnum(i64 %30)
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i64, i64* @TARGET_MIPS16, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @M16_REG_P(i32 %36)
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @GP_REG_P(i32 %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = phi i32 [ %37, %35 ], [ %40, %38 ]
  store i32 %42, i32* %12, align 4
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @mips_dangerous_for_la25_p(i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %41
  %47 = load i32, i32* @LEA_REGS, align 4
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** @reg_class_contents, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @TEST_HARD_REG_BIT(i32 %52, i32 25)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %214

57:                                               ; preds = %46
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ACC_REGS, align 4
  %61 = call i64 @reg_class_subset_p(i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %80

63:                                               ; preds = %58
  %64 = load i64, i64* @TARGET_MIPS16, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = load i32, i32* @M16_REGS, align 4
  store i32 %70, i32* %5, align 4
  br label %214

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @NO_REGS, align 4
  br label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %10, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %5, align 4
  br label %214

80:                                               ; preds = %58
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @ACC_REG_P(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %102

84:                                               ; preds = %80
  %85 = load i64, i64* @TARGET_MIPS16, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* @M16_REGS, align 4
  store i32 %91, i32* %5, align 4
  br label %214

92:                                               ; preds = %87, %84
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @NO_REGS, align 4
  br label %100

98:                                               ; preds = %92
  %99 = load i32, i32* %10, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  store i32 %101, i32* %5, align 4
  br label %214

102:                                              ; preds = %80
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @ST_REGS, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %102
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @FP_REGS, align 4
  store i32 %110, i32* %5, align 4
  br label %214

111:                                              ; preds = %106
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = load i32, i32* @NO_REGS, align 4
  br label %118

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i32 [ %115, %114 ], [ %117, %116 ]
  store i32 %119, i32* %5, align 4
  br label %214

120:                                              ; preds = %102
  %121 = load i32, i32* %11, align 4
  %122 = call i64 @ST_REG_P(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %139

124:                                              ; preds = %120
  %125 = load i32, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* @FP_REGS, align 4
  store i32 %128, i32* %5, align 4
  br label %214

129:                                              ; preds = %124
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = load i32, i32* @NO_REGS, align 4
  br label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %10, align 4
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i32 [ %134, %133 ], [ %136, %135 ]
  store i32 %138, i32* %5, align 4
  br label %214

139:                                              ; preds = %120
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @FP_REGS, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = load i64, i64* %8, align 8
  %145 = call i64 @MEM_P(i64 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %143
  %148 = load i32, i32* @NO_REGS, align 4
  store i32 %148, i32* %5, align 4
  br label %214

149:                                              ; preds = %143
  %150 = load i64, i64* %8, align 8
  %151 = call i64 @CONSTANT_P(i64 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = call i64 @GET_MODE_CLASS(i32 %154)
  %156 = load i64, i64* @MODE_FLOAT, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = load i32, i32* @NO_REGS, align 4
  store i32 %159, i32* %5, align 4
  br label %214

160:                                              ; preds = %153, %149
  %161 = load i32, i32* %12, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %160
  %164 = load i64, i64* %8, align 8
  %165 = load i32, i32* %7, align 4
  %166 = call i64 @CONST0_RTX(i32 %165)
  %167 = icmp eq i64 %164, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %163, %160
  %169 = load i32, i32* @NO_REGS, align 4
  store i32 %169, i32* %5, align 4
  br label %214

170:                                              ; preds = %163
  %171 = load i32, i32* %11, align 4
  %172 = call i64 @FP_REG_P(i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @NO_REGS, align 4
  store i32 %175, i32* %5, align 4
  br label %214

176:                                              ; preds = %170
  %177 = load i32, i32* %10, align 4
  store i32 %177, i32* %5, align 4
  br label %214

178:                                              ; preds = %139
  %179 = load i64, i64* @TARGET_MIPS16, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %212

181:                                              ; preds = %178
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @M16_REGS, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %196

185:                                              ; preds = %181
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @M16_NA_REGS, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = load i32, i32* @NO_REGS, align 4
  store i32 %193, i32* %5, align 4
  br label %214

194:                                              ; preds = %189
  %195 = load i32, i32* @M16_REGS, align 4
  store i32 %195, i32* %5, align 4
  br label %214

196:                                              ; preds = %185, %181
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %211, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @M16_REGS, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @M16_NA_REGS, align 4
  %206 = icmp eq i32 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203, %199
  %208 = load i32, i32* @NO_REGS, align 4
  store i32 %208, i32* %5, align 4
  br label %214

209:                                              ; preds = %203
  %210 = load i32, i32* @M16_REGS, align 4
  store i32 %210, i32* %5, align 4
  br label %214

211:                                              ; preds = %196
  br label %212

212:                                              ; preds = %211, %178
  %213 = load i32, i32* @NO_REGS, align 4
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %212, %209, %207, %194, %192, %176, %174, %168, %158, %147, %137, %127, %118, %109, %100, %90, %78, %69, %55
  %215 = load i32, i32* %5, align 4
  ret i32 %215
}

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @GET_CODE(i64) #1

declare dso_local i32 @true_regnum(i64) #1

declare dso_local i32 @M16_REG_P(i32) #1

declare dso_local i32 @GP_REG_P(i32) #1

declare dso_local i64 @mips_dangerous_for_la25_p(i64) #1

declare dso_local i64 @TEST_HARD_REG_BIT(i32, i32) #1

declare dso_local i64 @reg_class_subset_p(i32, i32) #1

declare dso_local i64 @ACC_REG_P(i32) #1

declare dso_local i64 @ST_REG_P(i32) #1

declare dso_local i64 @MEM_P(i64) #1

declare dso_local i64 @CONSTANT_P(i64) #1

declare dso_local i64 @GET_MODE_CLASS(i32) #1

declare dso_local i64 @CONST0_RTX(i32) #1

declare dso_local i64 @FP_REG_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
