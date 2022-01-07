; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_s_vSetRSPINF.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_s_vSetRSPINF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@RATE_1M = common dso_local global i32 0, align 4
@PK_TYPE_11B = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_1 = common dso_local global i64 0, align 8
@RATE_2M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_2 = common dso_local global i64 0, align 8
@RATE_5M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_5 = common dso_local global i64 0, align 8
@RATE_11M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_11 = common dso_local global i64 0, align 8
@RATE_6M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_6 = common dso_local global i64 0, align 8
@RATE_9M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_9 = common dso_local global i64 0, align 8
@RATE_12M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_12 = common dso_local global i64 0, align 8
@RATE_18M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_18 = common dso_local global i64 0, align 8
@RATE_24M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_24 = common dso_local global i64 0, align 8
@RATE_36M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_36 = common dso_local global i64 0, align 8
@RATE_48M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_48 = common dso_local global i64 0, align 8
@RATE_54M = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_A_54 = common dso_local global i64 0, align 8
@MAC_REG_RSPINF_A_72 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32)* @s_vSetRSPINF to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_vSetRSPINF(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @MACvSelectPage1(i64 %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %20 = load i32, i32* @RATE_1M, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @VNTWIFIbyGetACKTxRate(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* @PK_TYPE_11B, align 4
  %25 = call i32 @BBvCaculateParameter(%struct.TYPE_4__* %19, i32 14, i32 %23, i32 %24, i32* %12, i32* %10, i32* %11)
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MAC_REG_RSPINF_B_1, align 8
  %30 = add nsw i64 %28, %29
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @MAKEWORD(i32 %32, i32 %33)
  %35 = call i32 @MAKEDWORD(i32 %31, i32 %34)
  %36 = call i32 @VNSvOutPortD(i64 %30, i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %38 = load i32, i32* @RATE_2M, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @VNTWIFIbyGetACKTxRate(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @PK_TYPE_11B, align 4
  %43 = call i32 @BBvCaculateParameter(%struct.TYPE_4__* %37, i32 14, i32 %41, i32 %42, i32* %12, i32* %10, i32* %11)
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAC_REG_RSPINF_B_2, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @MAKEWORD(i32 %50, i32 %51)
  %53 = call i32 @MAKEDWORD(i32 %49, i32 %52)
  %54 = call i32 @VNSvOutPortD(i64 %48, i32 %53)
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %56 = load i32, i32* @RATE_5M, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @VNTWIFIbyGetACKTxRate(i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* @PK_TYPE_11B, align 4
  %61 = call i32 @BBvCaculateParameter(%struct.TYPE_4__* %55, i32 14, i32 %59, i32 %60, i32* %12, i32* %10, i32* %11)
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAC_REG_RSPINF_B_5, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @MAKEWORD(i32 %68, i32 %69)
  %71 = call i32 @MAKEDWORD(i32 %67, i32 %70)
  %72 = call i32 @VNSvOutPortD(i64 %66, i32 %71)
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %74 = load i32, i32* @RATE_11M, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @VNTWIFIbyGetACKTxRate(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* @PK_TYPE_11B, align 4
  %79 = call i32 @BBvCaculateParameter(%struct.TYPE_4__* %73, i32 14, i32 %77, i32 %78, i32* %12, i32* %10, i32* %11)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @MAC_REG_RSPINF_B_11, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @MAKEWORD(i32 %86, i32 %87)
  %89 = call i32 @MAKEDWORD(i32 %85, i32 %88)
  %90 = call i32 @VNSvOutPortD(i64 %84, i32 %89)
  %91 = load i32, i32* @RATE_6M, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @s_vCaculateOFDMRParameter(i32 %91, i32 %92, i32* %13, i32* %14)
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @MAC_REG_RSPINF_A_6, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @MAKEWORD(i32 %99, i32 %100)
  %102 = call i32 @VNSvOutPortW(i64 %98, i32 %101)
  %103 = load i32, i32* @RATE_9M, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @s_vCaculateOFDMRParameter(i32 %103, i32 %104, i32* %13, i32* %14)
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MAC_REG_RSPINF_A_9, align 8
  %110 = add nsw i64 %108, %109
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @MAKEWORD(i32 %111, i32 %112)
  %114 = call i32 @VNSvOutPortW(i64 %110, i32 %113)
  %115 = load i32, i32* @RATE_12M, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @s_vCaculateOFDMRParameter(i32 %115, i32 %116, i32* %13, i32* %14)
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @MAC_REG_RSPINF_A_12, align 8
  %122 = add nsw i64 %120, %121
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %14, align 4
  %125 = call i32 @MAKEWORD(i32 %123, i32 %124)
  %126 = call i32 @VNSvOutPortW(i64 %122, i32 %125)
  %127 = load i32, i32* @RATE_18M, align 4
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @s_vCaculateOFDMRParameter(i32 %127, i32 %128, i32* %13, i32* %14)
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @MAC_REG_RSPINF_A_18, align 8
  %134 = add nsw i64 %132, %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %14, align 4
  %137 = call i32 @MAKEWORD(i32 %135, i32 %136)
  %138 = call i32 @VNSvOutPortW(i64 %134, i32 %137)
  %139 = load i32, i32* @RATE_24M, align 4
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @s_vCaculateOFDMRParameter(i32 %139, i32 %140, i32* %13, i32* %14)
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @MAC_REG_RSPINF_A_24, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @MAKEWORD(i32 %147, i32 %148)
  %150 = call i32 @VNSvOutPortW(i64 %146, i32 %149)
  %151 = load i32, i32* @RATE_36M, align 4
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* %9, align 4
  %154 = call i32 @VNTWIFIbyGetACKTxRate(i32 %151, i32 %152, i32 %153)
  %155 = load i32, i32* %7, align 4
  %156 = call i32 @s_vCaculateOFDMRParameter(i32 %154, i32 %155, i32* %13, i32* %14)
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @MAC_REG_RSPINF_A_36, align 8
  %161 = add nsw i64 %159, %160
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %14, align 4
  %164 = call i32 @MAKEWORD(i32 %162, i32 %163)
  %165 = call i32 @VNSvOutPortW(i64 %161, i32 %164)
  %166 = load i32, i32* @RATE_48M, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @VNTWIFIbyGetACKTxRate(i32 %166, i32 %167, i32 %168)
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @s_vCaculateOFDMRParameter(i32 %169, i32 %170, i32* %13, i32* %14)
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @MAC_REG_RSPINF_A_48, align 8
  %176 = add nsw i64 %174, %175
  %177 = load i32, i32* %13, align 4
  %178 = load i32, i32* %14, align 4
  %179 = call i32 @MAKEWORD(i32 %177, i32 %178)
  %180 = call i32 @VNSvOutPortW(i64 %176, i32 %179)
  %181 = load i32, i32* @RATE_54M, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @VNTWIFIbyGetACKTxRate(i32 %181, i32 %182, i32 %183)
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @s_vCaculateOFDMRParameter(i32 %184, i32 %185, i32* %13, i32* %14)
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @MAC_REG_RSPINF_A_54, align 8
  %191 = add nsw i64 %189, %190
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* %14, align 4
  %194 = call i32 @MAKEWORD(i32 %192, i32 %193)
  %195 = call i32 @VNSvOutPortW(i64 %191, i32 %194)
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @MAC_REG_RSPINF_A_72, align 8
  %200 = add nsw i64 %198, %199
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* %14, align 4
  %203 = call i32 @MAKEWORD(i32 %201, i32 %202)
  %204 = call i32 @VNSvOutPortW(i64 %200, i32 %203)
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @MACvSelectPage0(i64 %207)
  %209 = load i32, i32* %5, align 4
  ret i32 %209
}

declare dso_local i32 @MACvSelectPage1(i64) #1

declare dso_local i32 @BBvCaculateParameter(%struct.TYPE_4__*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @VNTWIFIbyGetACKTxRate(i32, i32, i32) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

declare dso_local i32 @MAKEDWORD(i32, i32) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @s_vCaculateOFDMRParameter(i32, i32, i32*, i32*) #1

declare dso_local i32 @VNSvOutPortW(i64, i32) #1

declare dso_local i32 @MACvSelectPage0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
