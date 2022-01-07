; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDbSetChannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_card.c_CARDbSetChannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i32 }

@TRUE = common dso_local global i64 0, align 8
@sChannelTbl = common dso_local global %struct.TYPE_6__* null, align 8
@FALSE = common dso_local global i64 0, align 8
@CB_MAX_CHANNEL_24G = common dso_local global i64 0, align 8
@PHY_TYPE_11A = common dso_local global i64 0, align 8
@PHY_TYPE_11G = common dso_local global i64 0, align 8
@MAC_REG_MACCR = common dso_local global i32 0, align 4
@MACCR_CLRNAV = common dso_local global i32 0, align 4
@RF_AIROHA7230 = common dso_local global i64 0, align 8
@REV_ID_VT3253_B1 = common dso_local global i64 0, align 8
@RATE_1M = common dso_local global i32 0, align 4
@MAC_REG_PWRCCK = common dso_local global i64 0, align 8
@RATE_6M = common dso_local global i32 0, align 4
@MAC_REG_PWROFDM = common dso_local global i64 0, align 8
@PHY_TYPE_11B = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CARDbSetChannel(i32 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %10, %struct.TYPE_5__** %6, align 8
  %11 = load i64, i64* @TRUE, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %7, align 8
  store i64 %18, i64* %3, align 8
  br label %178

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** @sChannelTbl, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %3, align 8
  br label %178

29:                                               ; preds = %19
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %29
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PHY_TYPE_11A, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = load i64, i64* @PHY_TYPE_11A, align 8
  %42 = call i32 @CARDbSetPhyParameter(%struct.TYPE_5__* %40, i64 %41, i32 0, i32 0, i32* null, i32* null)
  br label %58

43:                                               ; preds = %33, %29
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* @CB_MAX_CHANNEL_24G, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @PHY_TYPE_11A, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %55 = load i64, i64* @PHY_TYPE_11G, align 8
  %56 = call i32 @CARDbSetPhyParameter(%struct.TYPE_5__* %54, i64 %55, i32 0, i32 0, i32* null, i32* null)
  br label %57

57:                                               ; preds = %53, %47, %43
  br label %58

58:                                               ; preds = %57, %39
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* @MAC_REG_MACCR, align 4
  %63 = load i32, i32* @MACCR_CLRNAV, align 4
  %64 = call i32 @MACvRegBitsOn(i64 %61, i32 %62, i32 %63)
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RF_AIROHA7230, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %58
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 5
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @RFbAL7230SelectChannelPostProcess(i64 %73, i64 %76, i64 %77)
  br label %79

79:                                               ; preds = %70, %58
  %80 = load i64, i64* %5, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %5, align 8
  %90 = call i64 @RFbSelectChannel(i64 %85, i64 %88, i64 %89)
  %91 = load i64, i64* %7, align 8
  %92 = and i64 %91, %90
  store i64 %92, i64* %7, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @TRUE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %79
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @RFvWriteWakeProgSyn(i64 %101, i64 %104, i64 %105)
  br label %107

107:                                              ; preds = %98, %79
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @BBvSoftwareReset(i64 %110)
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 4
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @REV_ID_VT3253_B1, align 8
  %116 = icmp sgt i64 %114, %115
  br i1 %116, label %117, label %156

117:                                              ; preds = %107
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @MACvSelectPage1(i64 %120)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = load i32, i32* @RATE_1M, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @RFbSetPower(%struct.TYPE_5__* %122, i32 %123, i64 %126)
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @MAC_REG_PWRCCK, align 8
  %132 = add nsw i64 %130, %131
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @VNSvOutPortB(i64 %132, i32 %135)
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = load i32, i32* @RATE_6M, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i32 @RFbSetPower(%struct.TYPE_5__* %137, i32 %138, i64 %141)
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MAC_REG_PWROFDM, align 8
  %147 = add nsw i64 %145, %146
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @VNSvOutPortB(i64 %147, i32 %150)
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @MACvSelectPage0(i64 %154)
  br label %156

156:                                              ; preds = %117, %107
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @PHY_TYPE_11B, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %169

162:                                              ; preds = %156
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %164 = load i32, i32* @RATE_1M, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @RFbSetPower(%struct.TYPE_5__* %163, i32 %164, i64 %167)
  br label %176

169:                                              ; preds = %156
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %171 = load i32, i32* @RATE_6M, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = call i32 @RFbSetPower(%struct.TYPE_5__* %170, i32 %171, i64 %174)
  br label %176

176:                                              ; preds = %169, %162
  %177 = load i64, i64* %7, align 8
  store i64 %177, i64* %3, align 8
  br label %178

178:                                              ; preds = %176, %27, %17
  %179 = load i64, i64* %3, align 8
  ret i64 %179
}

declare dso_local i32 @CARDbSetPhyParameter(%struct.TYPE_5__*, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @MACvRegBitsOn(i64, i32, i32) #1

declare dso_local i32 @RFbAL7230SelectChannelPostProcess(i64, i64, i64) #1

declare dso_local i64 @RFbSelectChannel(i64, i64, i64) #1

declare dso_local i32 @RFvWriteWakeProgSyn(i64, i64, i64) #1

declare dso_local i32 @BBvSoftwareReset(i64) #1

declare dso_local i32 @MACvSelectPage1(i64) #1

declare dso_local i32 @RFbSetPower(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @MACvSelectPage0(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
