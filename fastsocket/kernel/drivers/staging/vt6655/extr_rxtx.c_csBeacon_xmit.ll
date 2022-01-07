; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rxtx.c_csBeacon_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/vt6655/extr_rxtx.c_csBeacon_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i64, i32, i32, i64 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32, i8* }
%struct.TYPE_16__ = type { i8*, i64 }

@WLAN_FCS_LEN = common dso_local global i64 0, align 8
@PHY_TYPE_11A = common dso_local global i64 0, align 8
@RATE_6M = common dso_local global i64 0, align 8
@PK_TYPE_11A = common dso_local global i64 0, align 8
@RATE_2M = common dso_local global i64 0, align 8
@PK_TYPE_11B = common dso_local global i64 0, align 8
@PREAMBLE_LONG = common dso_local global i32 0, align 4
@FIFOCTL_GENINT = common dso_local global i32 0, align 4
@DATADUR_A = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AUTO_FB_NONE = common dso_local global i32 0, align 4
@FIFOCTL_11B = common dso_local global i32 0, align 4
@DATADUR_B = common dso_local global i32 0, align 4
@wTimeStampOff = common dso_local global i32** null, align 8
@MAX_RATE = common dso_local global i64 0, align 8
@MAC_REG_TCR = common dso_local global i32 0, align 4
@TCR_AUTOBCNTX = common dso_local global i32 0, align 4
@CMD_STATUS_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csBeacon_xmit(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 6
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %6, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WLAN_FCS_LEN, align 8
  %22 = add i64 %20, %21
  store i64 %22, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 4, i64* %9, align 8
  %23 = load i64, i64* %6, align 8
  %24 = inttoptr i64 %23 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %10, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %9, align 8
  %27 = add i64 %25, %26
  %28 = inttoptr i64 %27 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %28, %struct.TYPE_14__** %11, align 8
  store i64 0, i64* %14, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @memset(%struct.TYPE_12__* %29, i32 0, i64 %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @PHY_TYPE_11A, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %2
  %38 = load i64, i64* @RATE_6M, align 8
  store i64 %38, i64* %13, align 8
  %39 = load i64, i64* @PK_TYPE_11A, align 8
  store i64 %39, i64* %5, align 8
  br label %43

40:                                               ; preds = %2
  %41 = load i64, i64* @RATE_2M, align 8
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* @PK_TYPE_11B, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @PREAMBLE_LONG, align 4
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @FIFOCTL_GENINT, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i64, i64* %5, align 8
  %53 = load i64, i64* @PK_TYPE_11A, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %68

55:                                               ; preds = %43
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = load i32, i32* @DATADUR_A, align 4
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* @FALSE, align 4
  %62 = load i32, i32* @AUTO_FB_NONE, align 4
  %63 = call i64 @s_uGetDataDuration(%struct.TYPE_15__* %56, i32 %57, i64 %58, i64 %59, i64 %60, i32 %61, i32 0, i32 0, i32 1, i32 %62)
  %64 = trunc i64 %63 to i32
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 4
  store i8* %65, i8** %67, align 8
  br label %91

68:                                               ; preds = %43
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @PK_TYPE_11B, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i32, i32* @FIFOCTL_11B, align 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %79 = load i32, i32* @DATADUR_B, align 4
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %5, align 8
  %82 = load i64, i64* %13, align 8
  %83 = load i32, i32* @FALSE, align 4
  %84 = load i32, i32* @AUTO_FB_NONE, align 4
  %85 = call i64 @s_uGetDataDuration(%struct.TYPE_15__* %78, i32 %79, i64 %80, i64 %81, i64 %82, i32 %83, i32 0, i32 0, i32 1, i32 %84)
  %86 = trunc i64 %85 to i32
  %87 = call i8* @cpu_to_le16(i32 %86)
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %72, %68
  br label %91

91:                                               ; preds = %90, %55
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %13, align 8
  %95 = load i64, i64* %5, align 8
  %96 = ptrtoint i64* %14 to i32
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 3
  %99 = ptrtoint i32* %98 to i64
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 2
  %102 = ptrtoint i32* %101 to i64
  %103 = call i32 @BBvCaculateParameter(%struct.TYPE_15__* %92, i64 %93, i64 %94, i64 %95, i32 %96, i64 %99, i64 %102)
  %104 = load i64, i64* %14, align 8
  %105 = trunc i64 %104 to i32
  %106 = call i8* @cpu_to_le16(i32 %105)
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  store i8* %106, i8** %108, align 8
  %109 = load i32**, i32*** @wTimeStampOff, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = srem i32 %112, 2
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %109, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* %13, align 8
  %118 = load i64, i64* @MAX_RATE, align 8
  %119 = urem i64 %117, %118
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @cpu_to_le16(i32 %121)
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  %125 = load i64, i64* %9, align 8
  %126 = add i64 %125, 4
  store i64 %126, i64* %8, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* %8, align 8
  %129 = add i64 %127, %128
  %130 = inttoptr i64 %129 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %130, %struct.TYPE_16__** %12, align 8
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @memcpy(%struct.TYPE_16__* %131, i32 %134, i64 %137)
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = shl i32 %143, 4
  %145 = call i8* @cpu_to_le16(i32 %144)
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  store i8* %145, i8** %147, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = icmp sgt i32 %154, 4095
  br i1 %155, label %156, label %159

156:                                              ; preds = %91
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 2
  store i32 0, i32* %158, align 4
  br label %159

159:                                              ; preds = %156, %91
  %160 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* %8, align 8
  %164 = add i64 %162, %163
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 3
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @MACvSetCurrBCNTxDescAddr(i32 %169, i32 %172)
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @MACvSetCurrBCNLength(i32 %176, i64 %179)
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @MAC_REG_TCR, align 4
  %185 = load i32, i32* @TCR_AUTOBCNTX, align 4
  %186 = call i32 @MACvRegBitsOn(i32 %183, i32 %184, i32 %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @MACvTransmitBCN(i32 %189)
  %191 = load i32, i32* @CMD_STATUS_PENDING, align 4
  ret i32 %191
}

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i64) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @s_uGetDataDuration(%struct.TYPE_15__*, i32, i64, i64, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BBvCaculateParameter(%struct.TYPE_15__*, i64, i64, i64, i32, i64, i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_16__*, i32, i64) #1

declare dso_local i32 @MACvSetCurrBCNTxDescAddr(i32, i32) #1

declare dso_local i32 @MACvSetCurrBCNLength(i32, i64) #1

declare dso_local i32 @MACvRegBitsOn(i32, i32, i32) #1

declare dso_local i32 @MACvTransmitBCN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
