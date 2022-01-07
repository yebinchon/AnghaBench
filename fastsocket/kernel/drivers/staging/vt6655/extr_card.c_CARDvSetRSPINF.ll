; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDvSetRSPINF.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDvSetRSPINF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CARDvSetRSPINF(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %13, %struct.TYPE_3__** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @MACvSelectPage1(i64 %16)
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = ptrtoint %struct.TYPE_3__* %19 to i32
  %21 = load i32, i32* @RATE_1M, align 4
  %22 = call i32 @CARDwGetCCKControlRate(i32 %20, i32 %21)
  %23 = load i32, i32* @PK_TYPE_11B, align 4
  %24 = call i32 @BBvCaculateParameter(%struct.TYPE_3__* %18, i32 14, i32 %22, i32 %23, i32* %8, i32* %6, i32* %7)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAC_REG_RSPINF_B_1, align 8
  %29 = add nsw i64 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @MAKEWORD(i32 %31, i32 %32)
  %34 = call i32 @MAKEDWORD(i32 %30, i32 %33)
  %35 = call i32 @VNSvOutPortD(i64 %29, i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = ptrtoint %struct.TYPE_3__* %37 to i32
  %39 = load i32, i32* @RATE_2M, align 4
  %40 = call i32 @CARDwGetCCKControlRate(i32 %38, i32 %39)
  %41 = load i32, i32* @PK_TYPE_11B, align 4
  %42 = call i32 @BBvCaculateParameter(%struct.TYPE_3__* %36, i32 14, i32 %40, i32 %41, i32* %8, i32* %6, i32* %7)
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @MAC_REG_RSPINF_B_2, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @MAKEWORD(i32 %49, i32 %50)
  %52 = call i32 @MAKEDWORD(i32 %48, i32 %51)
  %53 = call i32 @VNSvOutPortD(i64 %47, i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = ptrtoint %struct.TYPE_3__* %55 to i32
  %57 = load i32, i32* @RATE_5M, align 4
  %58 = call i32 @CARDwGetCCKControlRate(i32 %56, i32 %57)
  %59 = load i32, i32* @PK_TYPE_11B, align 4
  %60 = call i32 @BBvCaculateParameter(%struct.TYPE_3__* %54, i32 14, i32 %58, i32 %59, i32* %8, i32* %6, i32* %7)
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MAC_REG_RSPINF_B_5, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @MAKEWORD(i32 %67, i32 %68)
  %70 = call i32 @MAKEDWORD(i32 %66, i32 %69)
  %71 = call i32 @VNSvOutPortD(i64 %65, i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %74 = ptrtoint %struct.TYPE_3__* %73 to i32
  %75 = load i32, i32* @RATE_11M, align 4
  %76 = call i32 @CARDwGetCCKControlRate(i32 %74, i32 %75)
  %77 = load i32, i32* @PK_TYPE_11B, align 4
  %78 = call i32 @BBvCaculateParameter(%struct.TYPE_3__* %72, i32 14, i32 %76, i32 %77, i32* %8, i32* %6, i32* %7)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MAC_REG_RSPINF_B_11, align 8
  %83 = add nsw i64 %81, %82
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @MAKEWORD(i32 %85, i32 %86)
  %88 = call i32 @MAKEDWORD(i32 %84, i32 %87)
  %89 = call i32 @VNSvOutPortD(i64 %83, i32 %88)
  %90 = load i32, i32* @RATE_6M, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @s_vCaculateOFDMRParameter(i32 %90, i32 %91, i32* %9, i32* %10)
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MAC_REG_RSPINF_A_6, align 8
  %97 = add nsw i64 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @MAKEWORD(i32 %98, i32 %99)
  %101 = call i32 @VNSvOutPortW(i64 %97, i32 %100)
  %102 = load i32, i32* @RATE_9M, align 4
  %103 = load i32, i32* %4, align 4
  %104 = call i32 @s_vCaculateOFDMRParameter(i32 %102, i32 %103, i32* %9, i32* %10)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @MAC_REG_RSPINF_A_9, align 8
  %109 = add nsw i64 %107, %108
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @MAKEWORD(i32 %110, i32 %111)
  %113 = call i32 @VNSvOutPortW(i64 %109, i32 %112)
  %114 = load i32, i32* @RATE_12M, align 4
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @s_vCaculateOFDMRParameter(i32 %114, i32 %115, i32* %9, i32* %10)
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @MAC_REG_RSPINF_A_12, align 8
  %121 = add nsw i64 %119, %120
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @MAKEWORD(i32 %122, i32 %123)
  %125 = call i32 @VNSvOutPortW(i64 %121, i32 %124)
  %126 = load i32, i32* @RATE_18M, align 4
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @s_vCaculateOFDMRParameter(i32 %126, i32 %127, i32* %9, i32* %10)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MAC_REG_RSPINF_A_18, align 8
  %133 = add nsw i64 %131, %132
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @MAKEWORD(i32 %134, i32 %135)
  %137 = call i32 @VNSvOutPortW(i64 %133, i32 %136)
  %138 = load i32, i32* @RATE_24M, align 4
  %139 = load i32, i32* %4, align 4
  %140 = call i32 @s_vCaculateOFDMRParameter(i32 %138, i32 %139, i32* %9, i32* %10)
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MAC_REG_RSPINF_A_24, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 @MAKEWORD(i32 %146, i32 %147)
  %149 = call i32 @VNSvOutPortW(i64 %145, i32 %148)
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %151 = ptrtoint %struct.TYPE_3__* %150 to i32
  %152 = load i32, i32* @RATE_36M, align 4
  %153 = call i32 @CARDwGetOFDMControlRate(i32 %151, i32 %152)
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @s_vCaculateOFDMRParameter(i32 %153, i32 %154, i32* %9, i32* %10)
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @MAC_REG_RSPINF_A_36, align 8
  %160 = add nsw i64 %158, %159
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @MAKEWORD(i32 %161, i32 %162)
  %164 = call i32 @VNSvOutPortW(i64 %160, i32 %163)
  %165 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %166 = ptrtoint %struct.TYPE_3__* %165 to i32
  %167 = load i32, i32* @RATE_48M, align 4
  %168 = call i32 @CARDwGetOFDMControlRate(i32 %166, i32 %167)
  %169 = load i32, i32* %4, align 4
  %170 = call i32 @s_vCaculateOFDMRParameter(i32 %168, i32 %169, i32* %9, i32* %10)
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @MAC_REG_RSPINF_A_48, align 8
  %175 = add nsw i64 %173, %174
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @MAKEWORD(i32 %176, i32 %177)
  %179 = call i32 @VNSvOutPortW(i64 %175, i32 %178)
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = ptrtoint %struct.TYPE_3__* %180 to i32
  %182 = load i32, i32* @RATE_54M, align 4
  %183 = call i32 @CARDwGetOFDMControlRate(i32 %181, i32 %182)
  %184 = load i32, i32* %4, align 4
  %185 = call i32 @s_vCaculateOFDMRParameter(i32 %183, i32 %184, i32* %9, i32* %10)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @MAC_REG_RSPINF_A_54, align 8
  %190 = add nsw i64 %188, %189
  %191 = load i32, i32* %9, align 4
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @MAKEWORD(i32 %191, i32 %192)
  %194 = call i32 @VNSvOutPortW(i64 %190, i32 %193)
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = ptrtoint %struct.TYPE_3__* %195 to i32
  %197 = load i32, i32* @RATE_54M, align 4
  %198 = call i32 @CARDwGetOFDMControlRate(i32 %196, i32 %197)
  %199 = load i32, i32* %4, align 4
  %200 = call i32 @s_vCaculateOFDMRParameter(i32 %198, i32 %199, i32* %9, i32* %10)
  %201 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @MAC_REG_RSPINF_A_72, align 8
  %205 = add nsw i64 %203, %204
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* %10, align 4
  %208 = call i32 @MAKEWORD(i32 %206, i32 %207)
  %209 = call i32 @VNSvOutPortW(i64 %205, i32 %208)
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @MACvSelectPage0(i64 %212)
  ret void
}

declare dso_local i32 @MACvSelectPage1(i64) #1

declare dso_local i32 @BBvCaculateParameter(%struct.TYPE_3__*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @CARDwGetCCKControlRate(i32, i32) #1

declare dso_local i32 @VNSvOutPortD(i64, i32) #1

declare dso_local i32 @MAKEDWORD(i32, i32) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i32 @s_vCaculateOFDMRParameter(i32, i32, i32*, i32*) #1

declare dso_local i32 @VNSvOutPortW(i64, i32) #1

declare dso_local i32 @CARDwGetOFDMControlRate(i32, i32) #1

declare dso_local i32 @MACvSelectPage0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
