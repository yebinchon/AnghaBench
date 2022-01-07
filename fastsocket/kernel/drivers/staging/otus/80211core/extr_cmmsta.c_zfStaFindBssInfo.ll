; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaFindBssInfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaFindBssInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.zsBssInfo* }
%struct.zsBssInfo = type { i64*, i32*, i32, %struct.zsBssInfo* }
%struct.zsWlanProbeRspFrameHeader = type { i64*, i32* }

@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_WLAN_EID_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zsBssInfo* @zfStaFindBssInfo(i32* %0, i32* %1, %struct.zsWlanProbeRspFrameHeader* %2) #0 {
  %4 = alloca %struct.zsBssInfo*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.zsWlanProbeRspFrameHeader*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.zsBssInfo*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.zsWlanProbeRspFrameHeader* %2, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @zmw_get_wlan_dev(i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load %struct.zsBssInfo*, %struct.zsBssInfo** %22, align 8
  store %struct.zsBssInfo* %23, %struct.zsBssInfo** %16, align 8
  %24 = icmp eq %struct.zsBssInfo* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %4, align 8
  br label %198

26:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %27

27:                                               ; preds = %184, %26
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %28, %33
  br i1 %34, label %35, label %187

35:                                               ; preds = %27
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %55, %35
  %37 = load i64, i64* %9, align 8
  %38 = icmp slt i64 %37, 6
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load %struct.zsBssInfo*, %struct.zsBssInfo** %16, align 8
  %41 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %47 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %45, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  br label %58

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54
  %56 = load i64, i64* %9, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %9, align 8
  br label %36

58:                                               ; preds = %53, %36
  %59 = load i64, i64* %9, align 8
  %60 = icmp eq i64 %59, 6
  br i1 %60, label %61, label %116

61:                                               ; preds = %58
  %62 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %63 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 32
  br i1 %67, label %68, label %114

68:                                               ; preds = %61
  store i64 1, i64* %11, align 8
  %69 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %70 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %113

75:                                               ; preds = %68
  %76 = load %struct.zsBssInfo*, %struct.zsBssInfo** %16, align 8
  %77 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %113

82:                                               ; preds = %75
  store i64 1, i64* %10, align 8
  br label %83

83:                                               ; preds = %109, %82
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %86 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %84, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %83
  %94 = load %struct.zsBssInfo*, %struct.zsBssInfo** %16, align 8
  %95 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* %10, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.zsWlanProbeRspFrameHeader*, %struct.zsWlanProbeRspFrameHeader** %7, align 8
  %101 = getelementptr inbounds %struct.zsWlanProbeRspFrameHeader, %struct.zsWlanProbeRspFrameHeader* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* %10, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %99, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  store i64 0, i64* %11, align 8
  br label %112

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108
  %110 = load i64, i64* %10, align 8
  %111 = add nsw i64 %110, 1
  store i64 %111, i64* %10, align 8
  br label %83

112:                                              ; preds = %107, %83
  br label %113

113:                                              ; preds = %112, %75, %68
  br label %115

114:                                              ; preds = %61
  store i64 0, i64* %11, align 8
  br label %115

115:                                              ; preds = %114, %113
  br label %117

116:                                              ; preds = %58
  store i64 0, i64* %11, align 8
  br label %117

117:                                              ; preds = %116, %115
  %118 = load i64, i64* %11, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %180

120:                                              ; preds = %117
  %121 = load i32*, i32** %5, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = load i32, i32* @ZM_WLAN_EID_DS, align 4
  %124 = call i32 @zfFindElement(i32* %121, i32* %122, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = icmp ne i32 %124, 65535
  br i1 %125, label %126, label %153

126:                                              ; preds = %120
  %127 = load i32*, i32** %5, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  %131 = call i64 @zmw_rx_buf_readb(i32* %127, i32* %128, i32 %130)
  store i64 %131, i64* %12, align 8
  %132 = icmp eq i64 %131, 1
  br i1 %132, label %133, label %151

133:                                              ; preds = %126
  %134 = load i32*, i32** %5, align 8
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 2
  %138 = call i64 @zmw_rx_buf_readb(i32* %134, i32* %135, i32 %137)
  store i64 %138, i64* %13, align 8
  %139 = load i32*, i32** %5, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i64, i64* %13, align 8
  %142 = call i32 @zfChNumToFreq(i32* %140, i64 %141, i32 0)
  %143 = call i64 @zfHpIsAllowedChannel(i32* %139, i32 %142)
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  store i32 0, i32* %15, align 4
  br label %150

146:                                              ; preds = %133
  %147 = load i32*, i32** %5, align 8
  %148 = load i64, i64* %13, align 8
  %149 = call i32 @zfChNumToFreq(i32* %147, i64 %148, i32 0)
  store i32 %149, i32* %15, align 4
  br label %150

150:                                              ; preds = %146, %145
  br label %152

151:                                              ; preds = %126
  store i32 0, i32* %15, align 4
  br label %152

152:                                              ; preds = %151, %150
  br label %158

153:                                              ; preds = %120
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %15, align 4
  br label %158

158:                                              ; preds = %153, %152
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %179

161:                                              ; preds = %158
  %162 = load i32, i32* %15, align 4
  %163 = icmp sgt i32 %162, 3000
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  %165 = load %struct.zsBssInfo*, %struct.zsBssInfo** %16, align 8
  %166 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp sgt i32 %167, 3000
  br i1 %168, label %177, label %169

169:                                              ; preds = %164, %161
  %170 = load i32, i32* %15, align 4
  %171 = icmp slt i32 %170, 3000
  br i1 %171, label %172, label %178

172:                                              ; preds = %169
  %173 = load %struct.zsBssInfo*, %struct.zsBssInfo** %16, align 8
  %174 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = icmp slt i32 %175, 3000
  br i1 %176, label %177, label %178

177:                                              ; preds = %172, %164
  br label %187

178:                                              ; preds = %172, %169
  br label %179

179:                                              ; preds = %178, %158
  br label %180

180:                                              ; preds = %179, %117
  %181 = load %struct.zsBssInfo*, %struct.zsBssInfo** %16, align 8
  %182 = getelementptr inbounds %struct.zsBssInfo, %struct.zsBssInfo* %181, i32 0, i32 3
  %183 = load %struct.zsBssInfo*, %struct.zsBssInfo** %182, align 8
  store %struct.zsBssInfo* %183, %struct.zsBssInfo** %16, align 8
  br label %184

184:                                              ; preds = %180
  %185 = load i64, i64* %8, align 8
  %186 = add nsw i64 %185, 1
  store i64 %186, i64* %8, align 8
  br label %27

187:                                              ; preds = %177, %27
  %188 = load i64, i64* %8, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp eq i64 %188, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  store %struct.zsBssInfo* null, %struct.zsBssInfo** %16, align 8
  br label %196

196:                                              ; preds = %195, %187
  %197 = load %struct.zsBssInfo*, %struct.zsBssInfo** %16, align 8
  store %struct.zsBssInfo* %197, %struct.zsBssInfo** %4, align 8
  br label %198

198:                                              ; preds = %196, %25
  %199 = load %struct.zsBssInfo*, %struct.zsBssInfo** %4, align 8
  ret %struct.zsBssInfo* %199
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i64 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i64 @zfHpIsAllowedChannel(i32*, i32) #1

declare dso_local i32 @zfChNumToFreq(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
