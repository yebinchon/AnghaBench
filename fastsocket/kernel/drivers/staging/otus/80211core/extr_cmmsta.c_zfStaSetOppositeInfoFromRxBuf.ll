; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaSetOppositeInfoFromRxBuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaSetOppositeInfoFromRxBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.TYPE_5__ = type { i64 }

@ZM_WLAN_HEADER_A2_OFFSET = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_WIRELESS_MODE_24_54 = common dso_local global i32 0, align 4
@ZM_WIRELESS_MODE_24_N = common dso_local global i32 0, align 4
@ZM_MODE_IBSS = common dso_local global i64 0, align 8
@ZM_HP_CAP_11N_ONE_TX_STREAM = common dso_local global i32 0, align 4
@ZM_WLAN_EID_EXTENDED_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfStaSetOppositeInfoFromRxBuf(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %8, align 4
  store i32 -1, i32* %11, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = call i32 (...) @zmw_declare_for_critical_section()
  %16 = load i32*, i32** %3, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %19 = call i32 @zmw_rx_buf_readh(i32* %16, i32* %17, i64 %18)
  %20 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %24 = add nsw i64 %23, 2
  %25 = call i32 @zmw_rx_buf_readh(i32* %21, i32* %22, i64 %24)
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %30 = add nsw i64 %29, 4
  %31 = call i32 @zmw_rx_buf_readh(i32* %27, i32* %28, i64 %30)
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 2
  store i32 %31, i32* %32, align 4
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @zmw_enter_critical_section(i32* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %37 = call i32 @zfStaFindFreeOpposite(i32* %35, i32* %36, i32* %5)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  br label %295

41:                                               ; preds = %2
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %6, align 8
  %51 = load i32*, i32** %3, align 8
  %52 = load i32*, i32** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* @ZM_WLAN_HEADER_A2_OFFSET, align 8
  %55 = call i32 @zfCopyFromRxBuffer(i32* %51, i32* %52, i32* %53, i64 %54, i32 6)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %59, 3000
  br i1 %60, label %61, label %71

61:                                               ; preds = %41
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @ZM_WIRELESS_MODE_24_54, align 4
  %66 = load i32, i32* @ZM_WIRELESS_MODE_24_N, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %61
  store i32 0, i32* %10, align 4
  br label %72

71:                                               ; preds = %61, %41
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %70
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %94

75:                                               ; preds = %72
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %79, 3000
  br i1 %80, label %81, label %94

81:                                               ; preds = %75
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ZM_MODE_IBSS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 0, i32* %10, align 4
  br label %94

94:                                               ; preds = %93, %87, %81, %75, %72
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = call i32 @zfHpCapability(i32* %98)
  %100 = load i32, i32* @ZM_HP_CAP_11N_ONE_TX_STREAM, align 4
  %101 = and i32 %99, %100
  store i32 %101, i32* %12, align 4
  %102 = load i32*, i32** %3, align 8
  %103 = load i32*, i32** %4, align 8
  %104 = load i32, i32* @ZM_WLAN_EID_EXTENDED_RATE, align 4
  %105 = call i32 @zfFindElement(i32* %102, i32* %103, i32 %104)
  store i32 %105, i32* %9, align 4
  %106 = icmp ne i32 %105, 65535
  br i1 %106, label %107, label %199

107:                                              ; preds = %94
  %108 = load i32, i32* %10, align 4
  %109 = icmp eq i32 %108, 1
  br i1 %109, label %110, label %199

110:                                              ; preds = %107
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %114, 3000
  br i1 %115, label %116, label %157

116:                                              ; preds = %110
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %122, label %141

122:                                              ; preds = %116
  %123 = load i32*, i32** %3, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 1
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 3, i32 2
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @zfRateCtrlInitCell(i32* %123, i32* %131, i32 %135, i32 1, i32 %139)
  br label %156

141:                                              ; preds = %116
  %142 = load i32*, i32** %3, align 8
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 4
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @zfRateCtrlInitCell(i32* %142, i32* %150, i32 1, i32 1, i32 %154)
  br label %156

156:                                              ; preds = %141, %122
  store i32 443, i32* %11, align 4
  br label %198

157:                                              ; preds = %110
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %182

163:                                              ; preds = %157
  %164 = load i32*, i32** %3, align 8
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 1
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i64
  %176 = select i1 %174, i32 3, i32 2
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 3
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @zfRateCtrlInitCell(i32* %164, i32* %172, i32 %176, i32 0, i32 %180)
  br label %197

182:                                              ; preds = %157
  %183 = load i32*, i32** %3, align 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @zfRateCtrlInitCell(i32* %183, i32* %191, i32 1, i32 0, i32 %195)
  br label %197

197:                                              ; preds = %182, %163
  store i32 17498555, i32* %11, align 4
  br label %198

198:                                              ; preds = %197, %156
  br label %291

199:                                              ; preds = %107, %94
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 2
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp slt i32 %203, 3000
  br i1 %204, label %205, label %249

205:                                              ; preds = %199
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %230

211:                                              ; preds = %205
  %212 = load i32*, i32** %3, align 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 1
  %221 = load i32, i32* %12, align 4
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 3, i32 2
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @zfRateCtrlInitCell(i32* %212, i32* %220, i32 %224, i32 1, i32 %228)
  store i32 443, i32* %11, align 4
  br label %248

230:                                              ; preds = %205
  %231 = load i32*, i32** %3, align 8
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 4
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @zfRateCtrlInitCell(i32* %231, i32* %239, i32 0, i32 1, i32 %243)
  store i32 0, i32* %11, align 4
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 2
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 1
  store i32 1, i32* %247, align 4
  br label %248

248:                                              ; preds = %230, %211
  br label %290

249:                                              ; preds = %199
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %274

255:                                              ; preds = %249
  %256 = load i32*, i32** %3, align 8
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 4
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = load i32, i32* %5, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 1
  %265 = load i32, i32* %12, align 4
  %266 = icmp ne i32 %265, 0
  %267 = zext i1 %266 to i64
  %268 = select i1 %266, i32 3, i32 2
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @zfRateCtrlInitCell(i32* %256, i32* %264, i32 %268, i32 0, i32 %272)
  br label %289

274:                                              ; preds = %249
  %275 = load i32*, i32** %3, align 8
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_6__*, %struct.TYPE_6__** %278, align 8
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 2
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @zfRateCtrlInitCell(i32* %275, i32* %283, i32 1, i32 0, i32 %287)
  br label %289

289:                                              ; preds = %274, %255
  store i32 17498555, i32* %11, align 4
  br label %290

290:                                              ; preds = %289, %248
  br label %291

291:                                              ; preds = %290, %198
  %292 = load i32*, i32** %3, align 8
  %293 = load i32, i32* %5, align 4
  %294 = call i32 @zfStaInitCommonOppositeInfo(i32* %292, i32 %293)
  br label %295

295:                                              ; preds = %291, %40
  %296 = load i32*, i32** %3, align 8
  %297 = call i32 @zmw_leave_critical_section(i32* %296)
  %298 = load i32, i32* %11, align 4
  %299 = icmp ne i32 %298, -1
  br i1 %299, label %300, label %304

300:                                              ; preds = %295
  %301 = load i32*, i32** %3, align 8
  %302 = load i32, i32* %11, align 4
  %303 = call i32 @zfHpSetRTSCTSRate(i32* %301, i32 %302)
  br label %304

304:                                              ; preds = %300, %295
  %305 = load i32, i32* %8, align 4
  ret i32 %305
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i64) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zfStaFindFreeOpposite(i32*, i32*, i32*) #1

declare dso_local i32 @zfCopyFromRxBuffer(i32*, i32*, i32*, i64, i32) #1

declare dso_local i32 @zfHpCapability(i32*) #1

declare dso_local i32 @zfFindElement(i32*, i32*, i32) #1

declare dso_local i32 @zfRateCtrlInitCell(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @zfStaInitCommonOppositeInfo(i32*, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfHpSetRTSCTSRate(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
