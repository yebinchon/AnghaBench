; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfGetRxIvIcvLength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ctxrx.c_zfGetRxIvIcvLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 }
%struct.zsAdditionInfo = type { i32 }

@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_MODE_AP = common dso_local global i64 0, align 8
@ZM_MAX_AP_SUPPORT = common dso_local global i64 0, align 8
@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i64 0, align 8
@ZM_MAX_WDS_SUPPORT = common dso_local global i32 0, align 4
@ZM_MODE_PSEUDO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfGetRxIvIcvLength(i32* %0, i32* %1, i64 %2, i32* %3, i32* %4, %struct.zsAdditionInfo* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.zsAdditionInfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca [3 x i32], align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.zsAdditionInfo* %5, %struct.zsAdditionInfo** %12, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call i32 @zmw_get_wlan_dev(i32* %17)
  %19 = load i32*, i32** %10, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32*, i32** %11, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %12, align 8
  %22 = call i64 @zfGetEncryModeFromRxStatus(%struct.zsAdditionInfo* %21)
  store i64 %22, i64* %14, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ZM_MODE_AP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %143

28:                                               ; preds = %6
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @ZM_MAX_AP_SUPPORT, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %142

32:                                               ; preds = %28
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %59, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 130
  br i1 %49, label %59, label %50

50:                                               ; preds = %41
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 129
  br i1 %58, label %59, label %62

59:                                               ; preds = %50, %41, %32
  %60 = load i32*, i32** %10, align 8
  store i32 4, i32* %60, align 4
  %61 = load i32*, i32** %11, align 8
  store i32 4, i32* %61, align 4
  br label %115

62:                                               ; preds = %50
  %63 = load i32*, i32** %7, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %66 = call i32 @zmw_rx_buf_readh(i32* %63, i32* %64, i64 %65)
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %71 = add nsw i64 %70, 2
  %72 = call i32 @zmw_rx_buf_readh(i32* %68, i32* %69, i64 %71)
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 1
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %7, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %77 = add nsw i64 %76, 4
  %78 = call i32 @zmw_rx_buf_readh(i32* %74, i32* %75, i64 %77)
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 2
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds [3 x i32], [3 x i32]* %16, i64 0, i64 0
  %82 = call i32 @zfApFindSta(i32* %80, i32* %81)
  store i32 %82, i32* %15, align 4
  %83 = icmp ne i32 %82, 65535
  br i1 %83, label %84, label %114

84:                                               ; preds = %62
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load i32, i32* %15, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 131
  br i1 %94, label %95, label %98

95:                                               ; preds = %84
  %96 = load i32*, i32** %10, align 8
  store i32 8, i32* %96, align 4
  %97 = load i32*, i32** %11, align 8
  store i32 4, i32* %97, align 4
  br label %113

98:                                               ; preds = %84
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = icmp eq i32 %107, 133
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = load i32*, i32** %10, align 8
  store i32 8, i32* %110, align 4
  %111 = load i32*, i32** %11, align 8
  store i32 8, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %98
  br label %113

113:                                              ; preds = %112, %95
  br label %114

114:                                              ; preds = %113, %62
  br label %115

115:                                              ; preds = %114, %59
  %116 = load i64, i64* %9, align 8
  %117 = sub i64 %116, 32
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* @ZM_MAX_WDS_SUPPORT, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %121, %115
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  switch i32 %131, label %141 [
    i32 128, label %132
    i32 130, label %132
    i32 129, label %132
    i32 131, label %135
    i32 133, label %138
  ]

132:                                              ; preds = %122, %122, %122
  %133 = load i32*, i32** %10, align 8
  store i32 4, i32* %133, align 4
  %134 = load i32*, i32** %11, align 8
  store i32 4, i32* %134, align 4
  br label %141

135:                                              ; preds = %122
  %136 = load i32*, i32** %10, align 8
  store i32 8, i32* %136, align 4
  %137 = load i32*, i32** %11, align 8
  store i32 4, i32* %137, align 4
  br label %141

138:                                              ; preds = %122
  %139 = load i32*, i32** %10, align 8
  store i32 8, i32* %139, align 4
  %140 = load i32*, i32** %11, align 8
  store i32 0, i32* %140, align 4
  br label %141

141:                                              ; preds = %122, %138, %135, %132
  br label %142

142:                                              ; preds = %141, %28
  br label %189

143:                                              ; preds = %6
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ZM_MODE_PSEUDO, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %161

149:                                              ; preds = %143
  %150 = load i64, i64* %14, align 8
  switch i64 %150, label %160 [
    i64 128, label %151
    i64 130, label %151
    i64 129, label %151
    i64 131, label %154
    i64 133, label %157
  ]

151:                                              ; preds = %149, %149, %149
  %152 = load i32*, i32** %10, align 8
  store i32 4, i32* %152, align 4
  %153 = load i32*, i32** %11, align 8
  store i32 4, i32* %153, align 4
  br label %160

154:                                              ; preds = %149
  %155 = load i32*, i32** %10, align 8
  store i32 8, i32* %155, align 4
  %156 = load i32*, i32** %11, align 8
  store i32 4, i32* %156, align 4
  br label %160

157:                                              ; preds = %149
  %158 = load i32*, i32** %10, align 8
  store i32 8, i32* %158, align 4
  %159 = load i32*, i32** %11, align 8
  store i32 0, i32* %159, align 4
  br label %160

160:                                              ; preds = %149, %157, %154, %151
  br label %188

161:                                              ; preds = %143
  %162 = load i64, i64* %14, align 8
  %163 = icmp eq i64 %162, 128
  br i1 %163, label %170, label %164

164:                                              ; preds = %161
  %165 = load i64, i64* %14, align 8
  %166 = icmp eq i64 %165, 130
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i64, i64* %14, align 8
  %169 = icmp eq i64 %168, 129
  br i1 %169, label %170, label %173

170:                                              ; preds = %167, %164, %161
  %171 = load i32*, i32** %10, align 8
  store i32 4, i32* %171, align 4
  %172 = load i32*, i32** %11, align 8
  store i32 4, i32* %172, align 4
  br label %187

173:                                              ; preds = %167
  %174 = load i64, i64* %14, align 8
  %175 = icmp eq i64 %174, 131
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32*, i32** %10, align 8
  store i32 8, i32* %177, align 4
  %178 = load i32*, i32** %11, align 8
  store i32 4, i32* %178, align 4
  br label %186

179:                                              ; preds = %173
  %180 = load i64, i64* %14, align 8
  %181 = icmp eq i64 %180, 133
  br i1 %181, label %182, label %185

182:                                              ; preds = %179
  %183 = load i32*, i32** %10, align 8
  store i32 8, i32* %183, align 4
  %184 = load i32*, i32** %11, align 8
  store i32 8, i32* %184, align 4
  br label %185

185:                                              ; preds = %182, %179
  br label %186

186:                                              ; preds = %185, %176
  br label %187

187:                                              ; preds = %186, %170
  br label %188

188:                                              ; preds = %187, %160
  br label %189

189:                                              ; preds = %188, %142
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @zfGetEncryModeFromRxStatus(%struct.zsAdditionInfo*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i64) #1

declare dso_local i32 @zfApFindSta(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
