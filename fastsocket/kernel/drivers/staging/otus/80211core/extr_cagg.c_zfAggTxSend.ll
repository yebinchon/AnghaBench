; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxSend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxSend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 (i32*, i64)*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i64 }
%struct.aggControl = type { i32, i64, i32 }

@ZM_EXTERNAL_ALLOC_BUF = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_11__* null, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"aggLen=\00", align 1
@ZM_AGG_FIRST_MPDU = common dso_local global i32 0, align 4
@ZM_AGG_LAST_MPDU = common dso_local global i32 0, align 4
@ZM_AGG_MIDDLE_MPDU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"in queue complete worked!\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"aggLen not reached, but no more frame, j=\00", align 1
@aggr_count = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"0xC2:sent 1 aggr, aggr_count=\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"0xC2:sent 1 aggr, aggr_size=\00", align 1
@agg_tal = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfAggTxSend(i32* %0, i32 %1, %struct.TYPE_10__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.aggControl, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @zmw_get_wlan_dev(i32* %13)
  %15 = call i32 (...) @zmw_declare_for_critical_section()
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @zmw_enter_critical_section(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @zm_agg_qlen(i32* %18, i32 %21, i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sub nsw i32 %32, 2
  %34 = call i32 @zm_agg_min(i32 %31, i32 %33)
  %35 = call i32 @zm_agg_min(i32 16, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @zmw_leave_critical_section(i32* %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp sle i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %244

41:                                               ; preds = %3
  %42 = load i32, i32* %11, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %47 = call i32* @zfAggTxGetVtxq(i32* %45, %struct.TYPE_10__* %46)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %54 = call i32 @zfTxSendEth(i32* %51, i32* %52, i32 0, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %50, %44
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %55
  store i32 1, i32* %4, align 4
  br label %244

62:                                               ; preds = %41
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @zmw_enter_critical_section(i32* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** @wd, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @zmw_leave_critical_section(i32* %70)
  store i32 0, i32* %4, align 4
  br label %244

72:                                               ; preds = %62
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @wd, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  store i32 1, i32* %74, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @zmw_leave_critical_section(i32* %75)
  %77 = load i32, i32* @ZM_LV_0, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @zm_msg1_agg(i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 5
  store i64 0, i64* %81, align 8
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %204, %72
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %207

86:                                               ; preds = %82
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %89 = call i32* @zfAggTxGetVtxq(i32* %87, %struct.TYPE_10__* %88)
  store i32* %89, i32** %9, align 8
  %90 = load i32*, i32** %5, align 8
  %91 = call i32 @zmw_enter_critical_section(i32* %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i8* @zm_agg_qlen(i32* %92, i32 %95, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = call i32 @zmw_leave_critical_section(i32* %103)
  %105 = load i32*, i32** %9, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %199

107:                                              ; preds = %86
  %108 = load i32, i32* %8, align 4
  %109 = icmp eq i32 0, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @ZM_AGG_FIRST_MPDU, align 4
  %112 = getelementptr inbounds %struct.aggControl, %struct.aggControl* %10, i32 0, i32 2
  store i32 %111, i32* %112, align 8
  br label %130

113:                                              ; preds = %107
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %11, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %123, label %118

118:                                              ; preds = %113
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %118, %113
  %124 = load i32, i32* @ZM_AGG_LAST_MPDU, align 4
  %125 = getelementptr inbounds %struct.aggControl, %struct.aggControl* %10, i32 0, i32 2
  store i32 %124, i32* %125, align 8
  br label %129

126:                                              ; preds = %118
  %127 = load i32, i32* @ZM_AGG_MIDDLE_MPDU, align 4
  %128 = getelementptr inbounds %struct.aggControl, %struct.aggControl* %10, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  br label %129

129:                                              ; preds = %126, %123
  br label %130

130:                                              ; preds = %129, %110
  %131 = load i32*, i32** %5, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i64 @zfwBufGetSize(i32* %131, i32* %132)
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, %133
  store i64 %137, i64* %135, align 8
  %138 = getelementptr inbounds %struct.aggControl, %struct.aggControl* %10, i32 0, i32 1
  store i64 0, i64* %138, align 8
  %139 = getelementptr inbounds %struct.aggControl, %struct.aggControl* %10, i32 0, i32 0
  store i32 1, i32* %139, align 8
  %140 = load i32*, i32** %5, align 8
  %141 = load i32*, i32** %9, align 8
  %142 = load i32, i32* @ZM_EXTERNAL_ALLOC_BUF, align 4
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %144 = call i32 @zfAggTxSendEth(i32* %140, i32* %141, i32 0, i32 %142, i32 0, %struct.aggControl* %10, %struct.TYPE_10__* %143)
  %145 = load i32*, i32** %5, align 8
  %146 = call i32 @zmw_enter_critical_section(i32* %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %12, align 4
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @zm_agg_inQ(%struct.TYPE_10__* %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %130
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @zm_agg_plus(i32 %159)
  br label %161

161:                                              ; preds = %156, %130
  %162 = load i32*, i32** %5, align 8
  %163 = call i32 @zmw_leave_critical_section(i32* %162)
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i64 @zm_agg_inQ(%struct.TYPE_10__* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %198

168:                                              ; preds = %161
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** @wd, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = load i32 (i32*, i64)*, i32 (i32*, i64)** %170, align 8
  %172 = icmp ne i32 (i32*, i64)* %171, null
  br i1 %172, label %173, label %198

173:                                              ; preds = %168
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_9__*, %struct.TYPE_9__** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %198

183:                                              ; preds = %173
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** @wd, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 1
  %186 = load i32 (i32*, i64)*, i32 (i32*, i64)** %185, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 4
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call i32 %186(i32* %187, i64 %195)
  %197 = call i32 @zm_debug_msg0(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %198

198:                                              ; preds = %183, %173, %168, %161
  br label %203

199:                                              ; preds = %86
  %200 = load i32, i32* @ZM_LV_0, align 4
  %201 = load i32, i32* %8, align 4
  %202 = call i32 @zm_msg1_agg(i32 %200, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %201)
  br label %207

203:                                              ; preds = %198
  br label %204

204:                                              ; preds = %203
  %205 = load i32, i32* %8, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %8, align 4
  br label %82

207:                                              ; preds = %199, %82
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @zmw_enter_critical_section(i32* %208)
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** @wd, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  store i32 0, i32* %211, align 8
  %212 = load i32*, i32** %5, align 8
  %213 = call i32 @zmw_leave_critical_section(i32* %212)
  %214 = load i32*, i32** %5, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i8* @zm_agg_qlen(i32* %214, i32 %217, i32 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %207
  br label %230

230:                                              ; preds = %229, %207
  %231 = load i32, i32* %8, align 4
  %232 = icmp sgt i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %230
  %234 = load i32, i32* @aggr_count, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* @aggr_count, align 4
  %236 = load i32, i32* @ZM_LV_0, align 4
  %237 = load i32, i32* @aggr_count, align 4
  %238 = call i32 @zm_msg1_agg(i32 %236, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* @ZM_LV_0, align 4
  %240 = load i32, i32* %8, align 4
  %241 = call i32 @zm_msg1_agg(i32 %239, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %233, %230
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %242, %69, %61, %40
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i8* @zm_agg_qlen(i32*, i32, i32) #1

declare dso_local i32 @zm_agg_min(i32, i32) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32* @zfAggTxGetVtxq(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @zfTxSendEth(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @zm_msg1_agg(i32, i8*, i32) #1

declare dso_local i64 @zfwBufGetSize(i32*, i32*) #1

declare dso_local i32 @zfAggTxSendEth(i32*, i32*, i32, i32, i32, %struct.aggControl*, %struct.TYPE_10__*) #1

declare dso_local i64 @zm_agg_inQ(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @zm_agg_plus(i32) #1

declare dso_local i32 @zm_debug_msg0(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
