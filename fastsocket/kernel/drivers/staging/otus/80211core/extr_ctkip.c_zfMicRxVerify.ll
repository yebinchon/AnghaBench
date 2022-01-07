; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfMicRxVerify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctkip.c_zfMicRxVerify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.zsMicVar = type { i32, i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i32 0, align 4
@ZM_WLAN_HEADER_A3_OFFSET = common dso_local global i32 0, align 4
@ZM_MIC_SUCCESS = common dso_local global i32 0, align 4
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A1_OFFSET = common dso_local global i32 0, align 4
@ZM_SIZE_OF_WLAN_DATA_HEADER = common dso_local global i32 0, align 4
@ZM_SIZE_OF_IV = common dso_local global i32 0, align 4
@ZM_SIZE_OF_EXT_IV = common dso_local global i32 0, align 4
@ZM_MIC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfMicRxVerify(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.zsMicVar*, align 8
  %7 = alloca %struct.zsMicVar, align 4
  %8 = alloca [8 x i32], align 16
  %9 = alloca [6 x i32], align 16
  %10 = alloca [6 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @zmw_get_wlan_dev(i32* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ZM_MODE_AP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = call %struct.zsMicVar* @zfApGetRxMicKey(i32* %23, i32* %24)
  store %struct.zsMicVar* %25, %struct.zsMicVar** %6, align 8
  %26 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %27 = icmp ne %struct.zsMicVar* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %22
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %32 = load i32, i32* @ZM_WLAN_HEADER_A2_OFFSET, align 4
  %33 = call i32 @zfCopyFromRxBuffer(i32* %29, i32* %30, i32* %31, i32 %32, i32 6)
  %34 = load i32*, i32** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %37 = load i32, i32* @ZM_WLAN_HEADER_A3_OFFSET, align 4
  %38 = call i32 @zfCopyFromRxBuffer(i32* %34, i32* %35, i32* %36, i32 %37, i32 6)
  br label %41

39:                                               ; preds = %22
  %40 = load i32, i32* @ZM_MIC_SUCCESS, align 4
  store i32 %40, i32* %3, align 4
  br label %203

41:                                               ; preds = %28
  br label %71

42:                                               ; preds = %2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42
  %49 = load i32*, i32** %4, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = call %struct.zsMicVar* @zfStaGetRxMicKey(i32* %49, i32* %50)
  store %struct.zsMicVar* %51, %struct.zsMicVar** %6, align 8
  %52 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %53 = icmp ne %struct.zsMicVar* %52, null
  br i1 %53, label %54, label %65

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 0
  %58 = load i32, i32* @ZM_WLAN_HEADER_A3_OFFSET, align 4
  %59 = call i32 @zfCopyFromRxBuffer(i32* %55, i32* %56, i32* %57, i32 %58, i32 6)
  %60 = load i32*, i32** %4, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %63 = load i32, i32* @ZM_WLAN_HEADER_A1_OFFSET, align 4
  %64 = call i32 @zfCopyFromRxBuffer(i32* %60, i32* %61, i32* %62, i32 %63, i32 6)
  br label %67

65:                                               ; preds = %48
  %66 = load i32, i32* @ZM_MIC_SUCCESS, align 4
  store i32 %66, i32* %3, align 4
  br label %203

67:                                               ; preds = %54
  br label %70

68:                                               ; preds = %42
  %69 = load i32, i32* @ZM_MIC_SUCCESS, align 4
  store i32 %69, i32* %3, align 4
  br label %203

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %41
  %72 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %73 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %7, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %77 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.zsMicVar, %struct.zsMicVar* %7, i32 0, i32 0
  store i32 %78, i32* %79, align 4
  store %struct.zsMicVar* %7, %struct.zsMicVar** %6, align 8
  %80 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %81 = call i32 @zfMicClear(%struct.zsMicVar* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @zfwBufGetSize(i32* %82, i32* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  %86 = sub nsw i32 %85, 8
  store i32 %86, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %97, %71
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 6
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %96 = call i32 @zfMicAppendByte(i32 %94, %struct.zsMicVar* %95)
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %87

100:                                              ; preds = %87
  store i32 0, i32* %12, align 4
  br label %101

101:                                              ; preds = %111, %100
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %102, 6
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [6 x i32], [6 x i32]* %10, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %110 = call i32 @zfMicAppendByte(i32 %108, %struct.zsMicVar* %109)
  br label %111

111:                                              ; preds = %104
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %101

114:                                              ; preds = %101
  %115 = load i32*, i32** %4, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @zmw_rx_buf_readb(i32* %115, i32* %116, i32 0)
  %118 = and i32 %117, 128
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %114
  %121 = load i32*, i32** %4, align 8
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @zmw_rx_buf_readb(i32* %121, i32* %122, i32 24)
  %124 = and i32 %123, 7
  %125 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %126 = call i32 @zfMicAppendByte(i32 %124, %struct.zsMicVar* %125)
  br label %130

127:                                              ; preds = %114
  %128 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %129 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %128)
  br label %130

130:                                              ; preds = %127, %120
  %131 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %132 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %131)
  %133 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %134 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %133)
  %135 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %136 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %135)
  %137 = load i32, i32* @ZM_SIZE_OF_WLAN_DATA_HEADER, align 4
  %138 = load i32, i32* @ZM_SIZE_OF_IV, align 4
  %139 = add nsw i32 %137, %138
  %140 = load i32, i32* @ZM_SIZE_OF_EXT_IV, align 4
  %141 = add nsw i32 %139, %140
  store i32 %141, i32* %13, align 4
  %142 = load i32*, i32** %4, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = call i32 @zmw_rx_buf_readb(i32* %142, i32* %143, i32 0)
  %145 = and i32 %144, 128
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %172

147:                                              ; preds = %130
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @ZM_MODE_AP, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %147
  br label %171

154:                                              ; preds = %147
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %154
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 2
  store i32 %168, i32* %13, align 4
  br label %169

169:                                              ; preds = %166, %160
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170, %153
  br label %172

172:                                              ; preds = %171, %130
  %173 = load i32, i32* %13, align 4
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %186, %172
  %175 = load i32, i32* %12, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %189

178:                                              ; preds = %174
  %179 = load i32*, i32** %4, align 8
  %180 = load i32*, i32** %5, align 8
  %181 = load i32, i32* %12, align 4
  %182 = call i32 @zmw_rx_buf_readb(i32* %179, i32* %180, i32 %181)
  store i32 %182, i32* %11, align 4
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %185 = call i32 @zfMicAppendByte(i32 %183, %struct.zsMicVar* %184)
  br label %186

186:                                              ; preds = %178
  %187 = load i32, i32* %12, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %12, align 4
  br label %174

189:                                              ; preds = %174
  %190 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %191 = load %struct.zsMicVar*, %struct.zsMicVar** %6, align 8
  %192 = call i32 @zfMicGetMic(i32* %190, %struct.zsMicVar* %191)
  %193 = load i32*, i32** %4, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %196 = load i32, i32* %14, align 4
  %197 = call i32 @zfRxBufferEqualToStr(i32* %193, i32* %194, i32* %195, i32 %196, i32 8)
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %201, label %199

199:                                              ; preds = %189
  %200 = load i32, i32* @ZM_MIC_FAILURE, align 4
  store i32 %200, i32* %3, align 4
  br label %203

201:                                              ; preds = %189
  %202 = load i32, i32* @ZM_MIC_SUCCESS, align 4
  store i32 %202, i32* %3, align 4
  br label %203

203:                                              ; preds = %201, %199, %68, %65, %39
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local %struct.zsMicVar* @zfApGetRxMicKey(i32*, i32*) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i32*, i32, i32) #1

declare dso_local %struct.zsMicVar* @zfStaGetRxMicKey(i32*, i32*) #1

declare dso_local i32 @zfMicClear(%struct.zsMicVar*) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfMicAppendByte(i32, %struct.zsMicVar*) #1

declare dso_local i32 @zmw_rx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfMicGetMic(i32*, %struct.zsMicVar*) #1

declare dso_local i32 @zfRxBufferEqualToStr(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
