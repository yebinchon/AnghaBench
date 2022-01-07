; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_mark_referenced_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_caller-save.c_mark_referenced_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SET = common dso_local global i32 0, align 4
@CLOBBER = common dso_local global i32 0, align 4
@REG = common dso_local global i32 0, align 4
@FIRST_PSEUDO_REGISTER = common dso_local global i32 0, align 4
@PC = common dso_local global i32 0, align 4
@CC0 = common dso_local global i32 0, align 4
@SUBREG = common dso_local global i32 0, align 4
@UNITS_PER_WORD = common dso_local global i64 0, align 8
@MEM = common dso_local global i32 0, align 4
@reg_renumber = common dso_local global i32* null, align 8
@hard_regno_nregs = common dso_local global i32** null, align 8
@referenced_regs = common dso_local global i32 0, align 4
@reg_equiv_mem = common dso_local global i64* null, align 8
@reg_equiv_address = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mark_referenced_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_referenced_regs(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @GET_CODE(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @SET, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* %2, align 8
  %17 = call i64 @SET_SRC(i64 %16)
  call void @mark_referenced_regs(i64 %17)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @SET, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @CLOBBER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %80

26:                                               ; preds = %22, %18
  %27 = load i64, i64* %2, align 8
  %28 = call i64 @SET_DEST(i64 %27)
  store i64 %28, i64* %2, align 8
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @GET_CODE(i64 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @REG, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @REGNO(i64 %35)
  %37 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %78, label %39

39:                                               ; preds = %34, %26
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @PC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %78, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @CC0, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %78, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @SUBREG, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %79

51:                                               ; preds = %47
  %52 = load i64, i64* %2, align 8
  %53 = call i64 @SUBREG_REG(i64 %52)
  %54 = call i64 @REG_P(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = load i64, i64* %2, align 8
  %58 = call i64 @SUBREG_REG(i64 %57)
  %59 = call i32 @REGNO(i64 %58)
  %60 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %56
  %63 = load i64, i64* %2, align 8
  %64 = call i64 @GET_MODE(i64 %63)
  %65 = call i64 @GET_MODE_SIZE(i64 %64)
  %66 = load i64, i64* %2, align 8
  %67 = call i64 @SUBREG_REG(i64 %66)
  %68 = call i64 @GET_MODE(i64 %67)
  %69 = call i64 @GET_MODE_SIZE(i64 %68)
  %70 = icmp sge i64 %65, %69
  br i1 %70, label %78, label %71

71:                                               ; preds = %62
  %72 = load i64, i64* %2, align 8
  %73 = call i64 @SUBREG_REG(i64 %72)
  %74 = call i64 @GET_MODE(i64 %73)
  %75 = call i64 @GET_MODE_SIZE(i64 %74)
  %76 = load i64, i64* @UNITS_PER_WORD, align 8
  %77 = icmp sle i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %71, %62, %43, %39, %34
  br label %217

79:                                               ; preds = %71, %56, %51, %47
  br label %80

80:                                               ; preds = %79, %22
  %81 = load i32, i32* %3, align 4
  %82 = load i32, i32* @MEM, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @SUBREG, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84, %80
  %89 = load i64, i64* %2, align 8
  %90 = call i64 @XEXP(i64 %89, i32 0)
  store i64 %90, i64* %2, align 8
  %91 = load i64, i64* %2, align 8
  %92 = call i32 @GET_CODE(i64 %91)
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %84
  %94 = load i32, i32* %3, align 4
  %95 = load i32, i32* @REG, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %166

97:                                               ; preds = %93
  %98 = load i64, i64* %2, align 8
  %99 = call i32 @REGNO(i64 %98)
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @FIRST_PSEUDO_REGISTER, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %7, align 4
  br label %111

105:                                              ; preds = %97
  %106 = load i32*, i32** @reg_renumber, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  br label %111

111:                                              ; preds = %105, %103
  %112 = phi i32 [ %104, %103 ], [ %110, %105 ]
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp sge i32 %113, 0
  br i1 %114, label %115, label %136

115:                                              ; preds = %111
  %116 = load i32**, i32*** @hard_regno_nregs, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i64, i64* %2, align 8
  %122 = call i64 @GET_MODE(i64 %121)
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %129, %115
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, -1
  store i32 %127, i32* %9, align 4
  %128 = icmp sgt i32 %126, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load i32, i32* @referenced_regs, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %131, %132
  %134 = call i32 @SET_HARD_REG_BIT(i32 %130, i32 %133)
  br label %125

135:                                              ; preds = %125
  br label %165

136:                                              ; preds = %111
  %137 = load i64*, i64** @reg_equiv_mem, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %137, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %136
  %144 = load i64*, i64** @reg_equiv_mem, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @XEXP(i64 %148, i32 0)
  call void @mark_referenced_regs(i64 %149)
  br label %164

150:                                              ; preds = %136
  %151 = load i64*, i64** @reg_equiv_address, align 8
  %152 = load i32, i32* %7, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i64*, i64** @reg_equiv_address, align 8
  %159 = load i32, i32* %7, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i64, i64* %158, i64 %160
  %162 = load i64, i64* %161, align 8
  call void @mark_referenced_regs(i64 %162)
  br label %163

163:                                              ; preds = %157, %150
  br label %164

164:                                              ; preds = %163, %143
  br label %165

165:                                              ; preds = %164, %135
  br label %217

166:                                              ; preds = %93
  %167 = load i32, i32* %3, align 4
  %168 = call i8* @GET_RTX_FORMAT(i32 %167)
  store i8* %168, i8** %4, align 8
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @GET_RTX_LENGTH(i32 %169)
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %214, %166
  %173 = load i32, i32* %5, align 4
  %174 = icmp sge i32 %173, 0
  br i1 %174, label %175, label %217

175:                                              ; preds = %172
  %176 = load i8*, i8** %4, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %176, i64 %178
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 101
  br i1 %182, label %183, label %187

183:                                              ; preds = %175
  %184 = load i64, i64* %2, align 8
  %185 = load i32, i32* %5, align 4
  %186 = call i64 @XEXP(i64 %184, i32 %185)
  call void @mark_referenced_regs(i64 %186)
  br label %213

187:                                              ; preds = %175
  %188 = load i8*, i8** %4, align 8
  %189 = load i32, i32* %5, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = icmp eq i32 %193, 69
  br i1 %194, label %195, label %212

195:                                              ; preds = %187
  %196 = load i64, i64* %2, align 8
  %197 = load i32, i32* %5, align 4
  %198 = call i32 @XVECLEN(i64 %196, i32 %197)
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %6, align 4
  br label %200

200:                                              ; preds = %208, %195
  %201 = load i32, i32* %6, align 4
  %202 = icmp sge i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = load i64, i64* %2, align 8
  %205 = load i32, i32* %5, align 4
  %206 = load i32, i32* %6, align 4
  %207 = call i64 @XVECEXP(i64 %204, i32 %205, i32 %206)
  call void @mark_referenced_regs(i64 %207)
  br label %208

208:                                              ; preds = %203
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, -1
  store i32 %210, i32* %6, align 4
  br label %200

211:                                              ; preds = %200
  br label %212

212:                                              ; preds = %211, %187
  br label %213

213:                                              ; preds = %212, %183
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %5, align 4
  %216 = add nsw i32 %215, -1
  store i32 %216, i32* %5, align 4
  br label %172

217:                                              ; preds = %78, %165, %172
  ret void
}

declare dso_local i32 @GET_CODE(i64) #1

declare dso_local i64 @SET_SRC(i64) #1

declare dso_local i64 @SET_DEST(i64) #1

declare dso_local i32 @REGNO(i64) #1

declare dso_local i64 @REG_P(i64) #1

declare dso_local i64 @SUBREG_REG(i64) #1

declare dso_local i64 @GET_MODE_SIZE(i64) #1

declare dso_local i64 @GET_MODE(i64) #1

declare dso_local i64 @XEXP(i64, i32) #1

declare dso_local i32 @SET_HARD_REG_BIT(i32, i32) #1

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
