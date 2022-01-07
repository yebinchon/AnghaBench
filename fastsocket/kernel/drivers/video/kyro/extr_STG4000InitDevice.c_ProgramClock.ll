; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/video/kyro/extr_STG4000InitDevice.c_ProgramClock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/video/kyro/extr_STG4000InitDevice.c_ProgramClock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.ProgramClock.ODValues = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 0], align 4
@STG4K3_PLL_SCALER = common dso_local global i32 0, align 4
@STG4K3_PLL_MIN_R = common dso_local global i32 0, align 4
@STG4K3_PLL_MAX_R = common dso_local global i32 0, align 4
@STG4K3_PLL_MIN_F = common dso_local global i32 0, align 4
@STG4K3_PLL_MAX_F = common dso_local global i32 0, align 4
@STG4K3_PLL_MINR_VCO = common dso_local global i32 0, align 4
@STG4K3_PLL_MAXR_VCO = common dso_local global i32 0, align 4
@STG4K3_PLL_MAX_VCO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ProgramClock(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
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
  %28 = alloca i32, align 4
  %29 = alloca [3 x i32], align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %24, align 4
  %30 = bitcast [3 x i32]* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %30, i8* align 4 bitcast ([3 x i32]* @__const.ProgramClock.ODValues to i8*), i64 12, i1 false)
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, 100
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %33, 1000
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 8
  %38 = sub nsw i32 %35, %37
  store i32 %38, i32* %27, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 8
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %28, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @STG4K3_PLL_SCALER, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %26, align 4
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %178, %5
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %47, 3
  br i1 %48, label %49, label %181

49:                                               ; preds = %46
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %29, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* @STG4K3_PLL_MIN_R, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %174, %49
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @STG4K3_PLL_MAX_R, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %177

59:                                               ; preds = %55
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %26, align 4
  %62 = load i32, i32* %13, align 4
  %63 = shl i32 %61, %62
  %64 = mul nsw i32 %60, %63
  store i32 %64, i32* %24, align 4
  %65 = load i32, i32* %24, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @STG4K3_PLL_SCALER, align 4
  %68 = ashr i32 %66, %67
  %69 = sdiv i32 %65, %68
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @STG4K3_PLL_MIN_F, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %12, align 4
  br label %76

76:                                               ; preds = %73, %59
  br label %77

77:                                               ; preds = %171, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @STG4K3_PLL_MIN_F, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @STG4K3_PLL_MAX_F, align 4
  %84 = icmp sle i32 %82, %83
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i1 [ false, %77 ], [ %84, %81 ]
  br i1 %86, label %87, label %174

87:                                               ; preds = %85
  %88 = load i32, i32* %6, align 4
  %89 = load i32, i32* %11, align 4
  %90 = sdiv i32 %88, %89
  store i32 %90, i32* %25, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %25, align 4
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* %25, align 4
  %94 = load i32, i32* %25, align 4
  %95 = load i32, i32* @STG4K3_PLL_MINR_VCO, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %171

97:                                               ; preds = %87
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* @STG4K3_PLL_MAXR_VCO, align 4
  %100 = icmp sle i32 %98, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @STG4K3_PLL_MAXR_VCO, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %171

105:                                              ; preds = %101
  %106 = load i32, i32* %25, align 4
  %107 = load i32, i32* @STG4K3_PLL_MAX_VCO, align 4
  %108 = icmp sle i32 %106, %107
  br i1 %108, label %109, label %171

109:                                              ; preds = %105, %97
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* %13, align 4
  %112 = ashr i32 %110, %111
  store i32 %112, i32* %24, align 4
  %113 = load i32, i32* %24, align 4
  %114 = load i32, i32* %27, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %116, label %170

116:                                              ; preds = %109
  %117 = load i32, i32* %24, align 4
  %118 = load i32, i32* %28, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %170

120:                                              ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sdiv i32 %121, %122
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* @STG4K3_PLL_MAX_R, align 4
  %126 = sdiv i32 %124, %125
  %127 = sub nsw i32 %123, %126
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @STG4K3_PLL_MAX_R, align 4
  %131 = sdiv i32 %129, %130
  %132 = sub nsw i32 %128, %131
  %133 = ashr i32 %132, 10
  %134 = sdiv i32 %127, %133
  store i32 %134, i32* %22, align 4
  %135 = load i32, i32* %25, align 4
  %136 = load i32, i32* @STG4K3_PLL_MINR_VCO, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* @STG4K3_PLL_MAXR_VCO, align 4
  %139 = load i32, i32* @STG4K3_PLL_MINR_VCO, align 4
  %140 = sub nsw i32 %138, %139
  %141 = ashr i32 %140, 10
  %142 = sdiv i32 %137, %141
  store i32 %142, i32* %23, align 4
  %143 = load i32, i32* %22, align 4
  %144 = load i32, i32* %23, align 4
  %145 = add nsw i32 %143, %144
  store i32 %145, i32* %21, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %120
  %149 = load i32, i32* %25, align 4
  store i32 %149, i32* %18, align 4
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %12, align 4
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %11, align 4
  store i32 %152, i32* %15, align 4
  %153 = load i32, i32* %24, align 4
  store i32 %153, i32* %19, align 4
  %154 = load i32, i32* %21, align 4
  store i32 %154, i32* %20, align 4
  br label %155

155:                                              ; preds = %148, %120
  %156 = load i32, i32* %21, align 4
  %157 = load i32, i32* %20, align 4
  %158 = icmp sge i32 %156, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %155
  %160 = load i32, i32* %13, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %159
  %163 = load i32, i32* %25, align 4
  store i32 %163, i32* %18, align 4
  %164 = load i32, i32* %13, align 4
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %12, align 4
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %11, align 4
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %24, align 4
  store i32 %167, i32* %19, align 4
  %168 = load i32, i32* %21, align 4
  store i32 %168, i32* %20, align 4
  br label %169

169:                                              ; preds = %162, %159, %155
  br label %170

170:                                              ; preds = %169, %116, %109
  br label %171

171:                                              ; preds = %170, %105, %101, %87
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %77

174:                                              ; preds = %85
  %175 = load i32, i32* %11, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %11, align 4
  br label %55

177:                                              ; preds = %55
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  br label %46

181:                                              ; preds = %46
  %182 = load i32, i32* %20, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %200

184:                                              ; preds = %181
  %185 = load i32, i32* %15, align 4
  %186 = load i32*, i32** %9, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32, i32* %16, align 4
  %188 = load i32*, i32** %8, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* %17, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %194, label %191

191:                                              ; preds = %184
  %192 = load i32, i32* %17, align 4
  %193 = icmp eq i32 %192, 3
  br i1 %193, label %194, label %196

194:                                              ; preds = %191, %184
  %195 = load i32*, i32** %10, align 8
  store i32 3, i32* %195, align 4
  br label %199

196:                                              ; preds = %191
  %197 = load i32, i32* %17, align 4
  %198 = load i32*, i32** %10, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %194
  br label %200

200:                                              ; preds = %199, %181
  %201 = load i32, i32* %19, align 4
  ret i32 %201
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
