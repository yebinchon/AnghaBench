; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_CARDvSetRSPINF.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6656/extr_card.c_CARDvSetRSPINF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RATE_1M = common dso_local global i32 0, align 4
@PK_TYPE_11B = common dso_local global i32 0, align 4
@RATE_2M = common dso_local global i32 0, align 4
@RATE_5M = common dso_local global i32 0, align 4
@RATE_11M = common dso_local global i32 0, align 4
@RATE_6M = common dso_local global i32 0, align 4
@RATE_9M = common dso_local global i32 0, align 4
@RATE_12M = common dso_local global i32 0, align 4
@RATE_18M = common dso_local global i32 0, align 4
@RATE_24M = common dso_local global i32 0, align 4
@RATE_36M = common dso_local global i32 0, align 4
@RATE_48M = common dso_local global i32 0, align 4
@RATE_54M = common dso_local global i32 0, align 4
@MESSAGE_TYPE_WRITE = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_1 = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_MACREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDvSetRSPINF(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i64], align 16
  %7 = alloca [4 x i64], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [9 x i64], align 16
  %10 = alloca [9 x i64], align 16
  %11 = alloca [34 x i64], align 16
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 %1, i64* %4, align 8
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %5, align 4
  %14 = bitcast [4 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 32, i1 false)
  %15 = bitcast [4 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 32, i1 false)
  %16 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 16, i1 false)
  %17 = bitcast [9 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %17, i8 0, i64 72, i1 false)
  %18 = bitcast [9 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 72, i1 false)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @RATE_1M, align 4
  %22 = call i32 @swGetCCKControlRate(i32 %20, i32 %21)
  %23 = load i32, i32* @PK_TYPE_11B, align 4
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %25 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %27 = call i32 @BBvCaculateParameter(i32 %19, i32 14, i32 %22, i32 %23, i32* %24, i64* %25, i64* %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RATE_2M, align 4
  %31 = call i32 @swGetCCKControlRate(i32 %29, i32 %30)
  %32 = load i32, i32* @PK_TYPE_11B, align 4
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1
  %35 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %36 = call i32 @BBvCaculateParameter(i32 %28, i32 14, i32 %31, i32 %32, i32* %33, i64* %34, i64* %35)
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @RATE_5M, align 4
  %40 = call i32 @swGetCCKControlRate(i32 %38, i32 %39)
  %41 = load i32, i32* @PK_TYPE_11B, align 4
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %45 = call i32 @BBvCaculateParameter(i32 %37, i32 14, i32 %40, i32 %41, i32* %42, i64* %43, i64* %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @RATE_11M, align 4
  %49 = call i32 @swGetCCKControlRate(i32 %47, i32 %48)
  %50 = load i32, i32* @PK_TYPE_11B, align 4
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %52 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 3
  %53 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %54 = call i32 @BBvCaculateParameter(i32 %46, i32 14, i32 %49, i32 %50, i32* %51, i64* %52, i64* %53)
  %55 = load i32, i32* @RATE_6M, align 4
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 0
  %58 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 0
  %59 = call i32 @CARDvCaculateOFDMRParameter(i32 %55, i64 %56, i64* %57, i64* %58)
  %60 = load i32, i32* @RATE_9M, align 4
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 1
  %63 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 1
  %64 = call i32 @CARDvCaculateOFDMRParameter(i32 %60, i64 %61, i64* %62, i64* %63)
  %65 = load i32, i32* @RATE_12M, align 4
  %66 = load i64, i64* %4, align 8
  %67 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 2
  %68 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 2
  %69 = call i32 @CARDvCaculateOFDMRParameter(i32 %65, i64 %66, i64* %67, i64* %68)
  %70 = load i32, i32* @RATE_18M, align 4
  %71 = load i64, i64* %4, align 8
  %72 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 3
  %73 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 3
  %74 = call i32 @CARDvCaculateOFDMRParameter(i32 %70, i64 %71, i64* %72, i64* %73)
  %75 = load i32, i32* @RATE_24M, align 4
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 4
  %78 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 4
  %79 = call i32 @CARDvCaculateOFDMRParameter(i32 %75, i64 %76, i64* %77, i64* %78)
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @RATE_36M, align 4
  %82 = call i32 @swGetOFDMControlRate(i32 %80, i32 %81)
  %83 = load i64, i64* %4, align 8
  %84 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 5
  %85 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 5
  %86 = call i32 @CARDvCaculateOFDMRParameter(i32 %82, i64 %83, i64* %84, i64* %85)
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @RATE_48M, align 4
  %89 = call i32 @swGetOFDMControlRate(i32 %87, i32 %88)
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 6
  %92 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 6
  %93 = call i32 @CARDvCaculateOFDMRParameter(i32 %89, i64 %90, i64* %91, i64* %92)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @RATE_54M, align 4
  %96 = call i32 @swGetOFDMControlRate(i32 %94, i32 %95)
  %97 = load i64, i64* %4, align 8
  %98 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 7
  %99 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 7
  %100 = call i32 @CARDvCaculateOFDMRParameter(i32 %96, i64 %97, i64* %98, i64* %99)
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @RATE_54M, align 4
  %103 = call i32 @swGetOFDMControlRate(i32 %101, i32 %102)
  %104 = load i64, i64* %4, align 8
  %105 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 8
  %106 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 8
  %107 = call i32 @CARDvCaculateOFDMRParameter(i32 %103, i64 %104, i64* %105, i64* %106)
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %109 = load i32, i32* %108, align 16
  %110 = and i32 %109, 255
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 0
  store i64 %111, i64* %112, align 16
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %114 = load i32, i32* %113, align 16
  %115 = ashr i32 %114, 8
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 1
  store i64 %116, i64* %117, align 8
  %118 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 0
  %119 = load i64, i64* %118, align 16
  %120 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 2
  store i64 %119, i64* %120, align 16
  %121 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 0
  %122 = load i64, i64* %121, align 16
  %123 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 3
  store i64 %122, i64* %123, align 8
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 255
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 4
  store i64 %127, i64* %128, align 16
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = ashr i32 %130, 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 5
  store i64 %132, i64* %133, align 8
  %134 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 6
  store i64 %135, i64* %136, align 16
  %137 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 1
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 7
  store i64 %138, i64* %139, align 8
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, 255
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 8
  store i64 %143, i64* %144, align 16
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %146 = load i32, i32* %145, align 8
  %147 = ashr i32 %146, 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 9
  store i64 %148, i64* %149, align 8
  %150 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 2
  %151 = load i64, i64* %150, align 16
  %152 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 10
  store i64 %151, i64* %152, align 16
  %153 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 2
  %154 = load i64, i64* %153, align 16
  %155 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 11
  store i64 %154, i64* %155, align 8
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 255
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 12
  store i64 %159, i64* %160, align 16
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %162 = load i32, i32* %161, align 4
  %163 = ashr i32 %162, 8
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 13
  store i64 %164, i64* %165, align 8
  %166 = getelementptr inbounds [4 x i64], [4 x i64]* %7, i64 0, i64 3
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 14
  store i64 %167, i64* %168, align 16
  %169 = getelementptr inbounds [4 x i64], [4 x i64]* %6, i64 0, i64 3
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 15
  store i64 %170, i64* %171, align 8
  store i32 0, i32* %12, align 4
  br label %172

172:                                              ; preds = %195, %2
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %173, 9
  br i1 %174, label %175, label %198

175:                                              ; preds = %172
  %176 = load i32, i32* %12, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds [9 x i64], [9 x i64]* %9, i64 0, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = mul nsw i32 %180, 2
  %182 = add nsw i32 16, %181
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 %183
  store i64 %179, i64* %184, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [9 x i64], [9 x i64]* %10, i64 0, i64 %186
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = mul nsw i32 %189, 2
  %191 = add nsw i32 16, %190
  %192 = add nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 %193
  store i64 %188, i64* %194, align 8
  br label %195

195:                                              ; preds = %175
  %196 = load i32, i32* %12, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %12, align 4
  br label %172

198:                                              ; preds = %172
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %201 = load i32, i32* @MAC_REG_RSPINF_B_1, align 4
  %202 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %203 = getelementptr inbounds [34 x i64], [34 x i64]* %11, i64 0, i64 0
  %204 = call i32 @CONTROLnsRequestOut(i32 %199, i32 %200, i32 %201, i32 %202, i32 34, i64* %203)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BBvCaculateParameter(i32, i32, i32, i32, i32*, i64*, i64*) #2

declare dso_local i32 @swGetCCKControlRate(i32, i32) #2

declare dso_local i32 @CARDvCaculateOFDMRParameter(i32, i64, i64*, i64*) #2

declare dso_local i32 @swGetOFDMControlRate(i32, i32) #2

declare dso_local i32 @CONTROLnsRequestOut(i32, i32, i32, i32, i32, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
