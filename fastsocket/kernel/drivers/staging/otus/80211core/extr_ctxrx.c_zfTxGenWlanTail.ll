; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfTxGenWlanTail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfTxGenWlanTail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.zsMicVar = type { i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@ZM_80211_FRAME_IP_OFFSET = common dso_local global i32 0, align 4
@ZM_80211_FRAME_TYPE_OFFSET = common dso_local global i32 0, align 4
@ZM_SIZE_OF_MIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfTxGenWlanTail(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.zsMicVar*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [12 x i32], align 16
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %17, align 4
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @zmw_get_wlan_dev(i32* %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ZM_MODE_AP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %5
  %27 = load i32*, i32** %7, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call %struct.zsMicVar* @zfApGetTxMicKey(i32* %27, i32* %28, i32* %17)
  store %struct.zsMicVar* %29, %struct.zsMicVar** %12, align 8
  %30 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %31 = icmp eq %struct.zsMicVar* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %203

33:                                               ; preds = %26
  br label %50

34:                                               ; preds = %5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = call %struct.zsMicVar* @zfStaGetTxMicKey(i32* %41, i32* %42)
  store %struct.zsMicVar* %43, %struct.zsMicVar** %12, align 8
  %44 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %45 = icmp eq %struct.zsMicVar* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %203

47:                                               ; preds = %40
  br label %49

48:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %203

49:                                               ; preds = %47
  br label %50

50:                                               ; preds = %49, %33
  %51 = load i32*, i32** %7, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @zfwBufGetSize(i32* %51, i32* %52)
  store i32 %53, i32* %14, align 4
  %54 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %55 = call i32 @zfMicClear(%struct.zsMicVar* %54)
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %67, %50
  %57 = load i32, i32* %13, align 4
  %58 = icmp slt i32 %57, 12
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @zmw_tx_buf_readb(i32* %60, i32* %61, i32 %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %66 = call i32 @zfMicAppendByte(i32 %64, %struct.zsMicVar* %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  br label %56

70:                                               ; preds = %56
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %95

76:                                               ; preds = %70
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %76
  %83 = load i32*, i32** %7, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32, i32* @ZM_80211_FRAME_IP_OFFSET, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @zmw_tx_buf_readb(i32* %83, i32* %84, i32 %86)
  %88 = ashr i32 %87, 5
  %89 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %90 = call i32 @zfMicAppendByte(i32 %88, %struct.zsMicVar* %89)
  br label %94

91:                                               ; preds = %76
  %92 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %93 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %92)
  br label %94

94:                                               ; preds = %91, %82
  br label %121

95:                                               ; preds = %70
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ZM_MODE_AP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %95
  %102 = load i32, i32* %17, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load i32*, i32** %7, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* @ZM_80211_FRAME_IP_OFFSET, align 4
  %108 = add nsw i32 %107, 1
  %109 = call i32 @zmw_tx_buf_readb(i32* %105, i32* %106, i32 %108)
  %110 = ashr i32 %109, 5
  %111 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %112 = call i32 @zfMicAppendByte(i32 %110, %struct.zsMicVar* %111)
  br label %116

113:                                              ; preds = %101
  %114 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %115 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %114)
  br label %116

116:                                              ; preds = %113, %104
  br label %120

117:                                              ; preds = %95
  %118 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %119 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %118)
  br label %120

120:                                              ; preds = %117, %116
  br label %121

121:                                              ; preds = %120, %94
  %122 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %123 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %122)
  %124 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %125 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %124)
  %126 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %127 = call i32 @zfMicAppendByte(i32 0, %struct.zsMicVar* %126)
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = load i32, i32* @ZM_80211_FRAME_IP_OFFSET, align 4
  store i32 %131, i32* %15, align 4
  br label %181

132:                                              ; preds = %121
  %133 = load i32, i32* @ZM_80211_FRAME_TYPE_OFFSET, align 4
  store i32 %133, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %134

134:                                              ; preds = %162, %132
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %10, align 4
  %137 = ashr i32 %136, 1
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %165

139:                                              ; preds = %134
  %140 = load i32*, i32** %9, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = and i32 %144, 255
  %146 = load i32, i32* %13, align 4
  %147 = mul nsw i32 %146, 2
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [12 x i32], [12 x i32]* %18, i64 0, i64 %148
  store i32 %145, i32* %149, align 4
  %150 = load i32*, i32** %9, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 8
  %156 = and i32 %155, 255
  %157 = load i32, i32* %13, align 4
  %158 = mul nsw i32 %157, 2
  %159 = add nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [12 x i32], [12 x i32]* %18, i64 0, i64 %160
  store i32 %156, i32* %161, align 4
  br label %162

162:                                              ; preds = %139
  %163 = load i32, i32* %13, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %13, align 4
  br label %134

165:                                              ; preds = %134
  store i32 0, i32* %13, align 4
  br label %166

166:                                              ; preds = %177, %165
  %167 = load i32, i32* %13, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %180

170:                                              ; preds = %166
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [12 x i32], [12 x i32]* %18, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %176 = call i32 @zfMicAppendByte(i32 %174, %struct.zsMicVar* %175)
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %166

180:                                              ; preds = %166
  br label %181

181:                                              ; preds = %180, %130
  %182 = load i32, i32* %15, align 4
  store i32 %182, i32* %13, align 4
  br label %183

183:                                              ; preds = %195, %181
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %183
  %188 = load i32*, i32** %7, align 8
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %13, align 4
  %191 = call i32 @zmw_tx_buf_readb(i32* %188, i32* %189, i32 %190)
  store i32 %191, i32* %16, align 4
  %192 = load i32, i32* %16, align 4
  %193 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %194 = call i32 @zfMicAppendByte(i32 %192, %struct.zsMicVar* %193)
  br label %195

195:                                              ; preds = %187
  %196 = load i32, i32* %13, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %13, align 4
  br label %183

198:                                              ; preds = %183
  %199 = load i32*, i32** %11, align 8
  %200 = load %struct.zsMicVar*, %struct.zsMicVar** %12, align 8
  %201 = call i32 @zfMicGetMic(i32* %199, %struct.zsMicVar* %200)
  %202 = load i32, i32* @ZM_SIZE_OF_MIC, align 4
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %198, %48, %46, %32
  %204 = load i32, i32* %6, align 4
  ret i32 %204
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local %struct.zsMicVar* @zfApGetTxMicKey(i32*, i32*, i32*) #1

declare dso_local %struct.zsMicVar* @zfStaGetTxMicKey(i32*, i32*) #1

declare dso_local i32 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfMicClear(%struct.zsMicVar*) #1

declare dso_local i32 @zmw_tx_buf_readb(i32*, i32*, i32) #1

declare dso_local i32 @zfMicAppendByte(i32, %struct.zsMicVar*) #1

declare dso_local i32 @zfMicGetMic(i32*, %struct.zsMicVar*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
