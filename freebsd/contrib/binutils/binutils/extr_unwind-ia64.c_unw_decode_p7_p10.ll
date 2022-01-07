; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_unwind-ia64.c_unw_decode_p7_p10.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/binutils/binutils/extr_unwind-ia64.c_unw_decode_p7_p10.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"P7\00", align 1
@UNW_REG_PSP = common dso_local global i32 0, align 4
@UNW_REG_RP = common dso_local global i32 0, align 4
@UNW_REG_PFS = common dso_local global i32 0, align 4
@UNW_REG_PR = common dso_local global i32 0, align 4
@UNW_REG_LC = common dso_local global i32 0, align 4
@UNW_REG_UNAT = common dso_local global i32 0, align 4
@UNW_REG_FPSR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"P8\00", align 1
@UNW_REG_BSP = common dso_local global i32 0, align 4
@UNW_REG_BSPSTORE = common dso_local global i32 0, align 4
@UNW_REG_RNAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"P9\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"P10\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*)* @unw_decode_p7_p10 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @unw_decode_p7_p10(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %107

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = and i32 %17, 15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %8, align 1
  %20 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %20, i32* %11, align 4
  %21 = load i8, i8* %8, align 1
  %22 = zext i8 %21 to i32
  switch i32 %22, label %102 [
    i32 0, label %23
    i32 1, label %29
    i32 2, label %33
    i32 3, label %37
    i32 4, label %42
    i32 5, label %47
    i32 6, label %52
    i32 7, label %57
    i32 8, label %62
    i32 9, label %67
    i32 10, label %72
    i32 11, label %77
    i32 12, label %82
    i32 13, label %87
    i32 14, label %92
    i32 15, label %97
  ]

23:                                               ; preds = %16
  %24 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @UNW_DEC_MEM_STACK_F(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i8* %27)
  br label %106

29:                                               ; preds = %16
  %30 = load i32, i32* %11, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @UNW_DEC_MEM_STACK_V(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31)
  br label %106

33:                                               ; preds = %16
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @UNW_DEC_SPILL_BASE(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %34, i8* %35)
  br label %106

37:                                               ; preds = %16
  %38 = load i32, i32* @UNW_REG_PSP, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i8* %40)
  br label %106

42:                                               ; preds = %16
  %43 = load i32, i32* @UNW_REG_RP, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @UNW_DEC_REG_WHEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i8* %45)
  br label %106

47:                                               ; preds = %16
  %48 = load i32, i32* @UNW_REG_RP, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @UNW_DEC_REG_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i8* %50)
  br label %106

52:                                               ; preds = %16
  %53 = load i32, i32* @UNW_REG_PFS, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @UNW_DEC_REG_WHEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i8* %55)
  br label %106

57:                                               ; preds = %16
  %58 = load i32, i32* @UNW_REG_PFS, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @UNW_DEC_REG_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i8* %60)
  br label %106

62:                                               ; preds = %16
  %63 = load i32, i32* @UNW_REG_PR, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @UNW_DEC_REG_WHEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64, i8* %65)
  br label %106

67:                                               ; preds = %16
  %68 = load i32, i32* @UNW_REG_PR, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @UNW_DEC_REG_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %68, i32 %69, i8* %70)
  br label %106

72:                                               ; preds = %16
  %73 = load i32, i32* @UNW_REG_LC, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @UNW_DEC_REG_WHEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i8* %75)
  br label %106

77:                                               ; preds = %16
  %78 = load i32, i32* @UNW_REG_LC, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @UNW_DEC_REG_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %79, i8* %80)
  br label %106

82:                                               ; preds = %16
  %83 = load i32, i32* @UNW_REG_UNAT, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i8*, i8** %7, align 8
  %86 = call i32 @UNW_DEC_REG_WHEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i8* %85)
  br label %106

87:                                               ; preds = %16
  %88 = load i32, i32* @UNW_REG_UNAT, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = call i32 @UNW_DEC_REG_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89, i8* %90)
  br label %106

92:                                               ; preds = %16
  %93 = load i32, i32* @UNW_REG_FPSR, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @UNW_DEC_REG_WHEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %93, i32 %94, i8* %95)
  br label %106

97:                                               ; preds = %16
  %98 = load i32, i32* @UNW_REG_FPSR, align 4
  %99 = load i32, i32* %11, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @UNW_DEC_REG_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %99, i8* %100)
  br label %106

102:                                              ; preds = %16
  %103 = load i8, i8* %8, align 1
  %104 = zext i8 %103 to i32
  %105 = call i32 @UNW_DEC_BAD_CODE(i32 %104)
  br label %106

106:                                              ; preds = %102, %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %33, %29, %23
  br label %265

107:                                              ; preds = %3
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 15
  switch i32 %109, label %261 [
    i32 0, label %110
    i32 1, label %213
    i32 15, label %230
    i32 9, label %241
    i32 10, label %246
    i32 11, label %251
    i32 12, label %256
  ]

110:                                              ; preds = %107
  %111 = load i8*, i8** %5, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %5, align 8
  %113 = load i8, i8* %111, align 1
  store i8 %113, i8* %8, align 1
  %114 = call i32 @unw_decode_uleb128(i8** %5)
  store i32 %114, i32* %11, align 4
  %115 = load i8, i8* %8, align 1
  %116 = zext i8 %115 to i32
  switch i32 %116, label %208 [
    i32 1, label %117
    i32 2, label %122
    i32 3, label %127
    i32 4, label %132
    i32 5, label %137
    i32 6, label %142
    i32 7, label %147
    i32 8, label %152
    i32 9, label %157
    i32 10, label %162
    i32 11, label %167
    i32 12, label %172
    i32 13, label %177
    i32 14, label %182
    i32 15, label %187
    i32 16, label %192
    i32 17, label %196
    i32 18, label %200
    i32 19, label %204
  ]

117:                                              ; preds = %110
  %118 = load i32, i32* @UNW_REG_RP, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %119, i8* %120)
  br label %212

122:                                              ; preds = %110
  %123 = load i32, i32* @UNW_REG_PFS, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i8*, i8** %7, align 8
  %126 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %123, i32 %124, i8* %125)
  br label %212

127:                                              ; preds = %110
  %128 = load i32, i32* @UNW_REG_PR, align 4
  %129 = load i32, i32* %11, align 4
  %130 = load i8*, i8** %7, align 8
  %131 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %128, i32 %129, i8* %130)
  br label %212

132:                                              ; preds = %110
  %133 = load i32, i32* @UNW_REG_LC, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i8*, i8** %7, align 8
  %136 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %133, i32 %134, i8* %135)
  br label %212

137:                                              ; preds = %110
  %138 = load i32, i32* @UNW_REG_UNAT, align 4
  %139 = load i32, i32* %11, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %138, i32 %139, i8* %140)
  br label %212

142:                                              ; preds = %110
  %143 = load i32, i32* @UNW_REG_FPSR, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %144, i8* %145)
  br label %212

147:                                              ; preds = %110
  %148 = load i32, i32* @UNW_REG_BSP, align 4
  %149 = load i32, i32* %11, align 4
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @UNW_DEC_REG_WHEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %149, i8* %150)
  br label %212

152:                                              ; preds = %110
  %153 = load i32, i32* @UNW_REG_BSP, align 4
  %154 = load i32, i32* %11, align 4
  %155 = load i8*, i8** %7, align 8
  %156 = call i32 @UNW_DEC_REG_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 %154, i8* %155)
  br label %212

157:                                              ; preds = %110
  %158 = load i32, i32* @UNW_REG_BSP, align 4
  %159 = load i32, i32* %11, align 4
  %160 = load i8*, i8** %7, align 8
  %161 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %158, i32 %159, i8* %160)
  br label %212

162:                                              ; preds = %110
  %163 = load i32, i32* @UNW_REG_BSPSTORE, align 4
  %164 = load i32, i32* %11, align 4
  %165 = load i8*, i8** %7, align 8
  %166 = call i32 @UNW_DEC_REG_WHEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %163, i32 %164, i8* %165)
  br label %212

167:                                              ; preds = %110
  %168 = load i32, i32* @UNW_REG_BSPSTORE, align 4
  %169 = load i32, i32* %11, align 4
  %170 = load i8*, i8** %7, align 8
  %171 = call i32 @UNW_DEC_REG_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %168, i32 %169, i8* %170)
  br label %212

172:                                              ; preds = %110
  %173 = load i32, i32* @UNW_REG_BSPSTORE, align 4
  %174 = load i32, i32* %11, align 4
  %175 = load i8*, i8** %7, align 8
  %176 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %173, i32 %174, i8* %175)
  br label %212

177:                                              ; preds = %110
  %178 = load i32, i32* @UNW_REG_RNAT, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i8*, i8** %7, align 8
  %181 = call i32 @UNW_DEC_REG_WHEN(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %178, i32 %179, i8* %180)
  br label %212

182:                                              ; preds = %110
  %183 = load i32, i32* @UNW_REG_RNAT, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i8*, i8** %7, align 8
  %186 = call i32 @UNW_DEC_REG_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %183, i32 %184, i8* %185)
  br label %212

187:                                              ; preds = %110
  %188 = load i32, i32* @UNW_REG_RNAT, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load i8*, i8** %7, align 8
  %191 = call i32 @UNW_DEC_REG_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %188, i32 %189, i8* %190)
  br label %212

192:                                              ; preds = %110
  %193 = load i32, i32* %11, align 4
  %194 = load i8*, i8** %7, align 8
  %195 = call i32 @UNW_DEC_PRIUNAT_WHEN_GR(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %193, i8* %194)
  br label %212

196:                                              ; preds = %110
  %197 = load i32, i32* %11, align 4
  %198 = load i8*, i8** %7, align 8
  %199 = call i32 @UNW_DEC_PRIUNAT_PSPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %197, i8* %198)
  br label %212

200:                                              ; preds = %110
  %201 = load i32, i32* %11, align 4
  %202 = load i8*, i8** %7, align 8
  %203 = call i32 @UNW_DEC_PRIUNAT_SPREL(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %201, i8* %202)
  br label %212

204:                                              ; preds = %110
  %205 = load i32, i32* %11, align 4
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 @UNW_DEC_PRIUNAT_WHEN_MEM(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %205, i8* %206)
  br label %212

208:                                              ; preds = %110
  %209 = load i8, i8* %8, align 1
  %210 = zext i8 %209 to i32
  %211 = call i32 @UNW_DEC_BAD_CODE(i32 %210)
  br label %212

212:                                              ; preds = %208, %204, %200, %196, %192, %187, %182, %177, %172, %167, %162, %157, %152, %147, %142, %137, %132, %127, %122, %117
  br label %264

213:                                              ; preds = %107
  %214 = load i8*, i8** %5, align 8
  %215 = getelementptr inbounds i8, i8* %214, i32 1
  store i8* %215, i8** %5, align 8
  %216 = load i8, i8* %214, align 1
  store i8 %216, i8* %9, align 1
  %217 = load i8*, i8** %5, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %5, align 8
  %219 = load i8, i8* %217, align 1
  store i8 %219, i8* %10, align 1
  %220 = load i8, i8* %9, align 1
  %221 = zext i8 %220 to i32
  %222 = and i32 %221, 15
  %223 = trunc i32 %222 to i8
  %224 = load i8, i8* %10, align 1
  %225 = zext i8 %224 to i32
  %226 = and i32 %225, 127
  %227 = trunc i32 %226 to i8
  %228 = load i8*, i8** %7, align 8
  %229 = call i32 @UNW_DEC_GR_GR(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8 zeroext %223, i8 zeroext %227, i8* %228)
  br label %264

230:                                              ; preds = %107
  %231 = load i8*, i8** %5, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %5, align 8
  %233 = load i8, i8* %231, align 1
  store i8 %233, i8* %9, align 1
  %234 = load i8*, i8** %5, align 8
  %235 = getelementptr inbounds i8, i8* %234, i32 1
  store i8* %235, i8** %5, align 8
  %236 = load i8, i8* %234, align 1
  store i8 %236, i8* %10, align 1
  %237 = load i8, i8* %9, align 1
  %238 = load i8, i8* %10, align 1
  %239 = load i8*, i8** %7, align 8
  %240 = call i32 @UNW_DEC_ABI(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8 zeroext %237, i8 zeroext %238, i8* %239)
  br label %264

241:                                              ; preds = %107
  %242 = load i8*, i8** %5, align 8
  %243 = load i32, i32* %6, align 4
  %244 = load i8*, i8** %7, align 8
  %245 = call i8* @unw_decode_x1(i8* %242, i32 %243, i8* %244)
  store i8* %245, i8** %4, align 8
  br label %267

246:                                              ; preds = %107
  %247 = load i8*, i8** %5, align 8
  %248 = load i32, i32* %6, align 4
  %249 = load i8*, i8** %7, align 8
  %250 = call i8* @unw_decode_x2(i8* %247, i32 %248, i8* %249)
  store i8* %250, i8** %4, align 8
  br label %267

251:                                              ; preds = %107
  %252 = load i8*, i8** %5, align 8
  %253 = load i32, i32* %6, align 4
  %254 = load i8*, i8** %7, align 8
  %255 = call i8* @unw_decode_x3(i8* %252, i32 %253, i8* %254)
  store i8* %255, i8** %4, align 8
  br label %267

256:                                              ; preds = %107
  %257 = load i8*, i8** %5, align 8
  %258 = load i32, i32* %6, align 4
  %259 = load i8*, i8** %7, align 8
  %260 = call i8* @unw_decode_x4(i8* %257, i32 %258, i8* %259)
  store i8* %260, i8** %4, align 8
  br label %267

261:                                              ; preds = %107
  %262 = load i32, i32* %6, align 4
  %263 = call i32 @UNW_DEC_BAD_CODE(i32 %262)
  br label %264

264:                                              ; preds = %261, %230, %213, %212
  br label %265

265:                                              ; preds = %264, %106
  %266 = load i8*, i8** %5, align 8
  store i8* %266, i8** %4, align 8
  br label %267

267:                                              ; preds = %265, %256, %251, %246, %241
  %268 = load i8*, i8** %4, align 8
  ret i8* %268
}

declare dso_local i32 @unw_decode_uleb128(i8**) #1

declare dso_local i32 @UNW_DEC_MEM_STACK_F(i8*, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_MEM_STACK_V(i8*, i32, i8*) #1

declare dso_local i32 @UNW_DEC_SPILL_BASE(i8*, i32, i8*) #1

declare dso_local i32 @UNW_DEC_REG_SPREL(i8*, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_REG_WHEN(i8*, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_REG_PSPREL(i8*, i32, i32, i8*) #1

declare dso_local i32 @UNW_DEC_BAD_CODE(i32) #1

declare dso_local i32 @UNW_DEC_PRIUNAT_WHEN_GR(i8*, i32, i8*) #1

declare dso_local i32 @UNW_DEC_PRIUNAT_PSPREL(i8*, i32, i8*) #1

declare dso_local i32 @UNW_DEC_PRIUNAT_SPREL(i8*, i32, i8*) #1

declare dso_local i32 @UNW_DEC_PRIUNAT_WHEN_MEM(i8*, i32, i8*) #1

declare dso_local i32 @UNW_DEC_GR_GR(i8*, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i32 @UNW_DEC_ABI(i8*, i8 zeroext, i8 zeroext, i8*) #1

declare dso_local i8* @unw_decode_x1(i8*, i32, i8*) #1

declare dso_local i8* @unw_decode_x2(i8*, i32, i8*) #1

declare dso_local i8* @unw_decode_x3(i8*, i32, i8*) #1

declare dso_local i8* @unw_decode_x4(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
