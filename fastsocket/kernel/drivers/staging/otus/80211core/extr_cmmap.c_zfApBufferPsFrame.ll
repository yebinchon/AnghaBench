; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApBufferPsFrame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmap.c_zfApBufferPsFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32*, i32*, i32, i32, i32**, i32, %struct.TYPE_4__*, i32*** }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ZM_MAX_AP_SUPPORT = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_BCMC_ARRAY_SIZE = common dso_local global i32 0, align 4
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Buffer BCMC\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"BCMC buffer full\00", align 1
@ZM_ERR_BCMC_PS_BUFFER_UNAVAILABLE = common dso_local global i32 0, align 4
@zcUpToAc = common dso_local global i32* null, align 8
@ZM_SUCCESS = common dso_local global i64 0, align 8
@ZM_ERR_AP_UAPSD_QUEUE_FULL = common dso_local global i32 0, align 4
@ZM_UNI_ARRAY_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Buffer UNI\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"UNI buffer full\00", align 1
@ZM_ERR_UNI_PS_BUFFER_UNAVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfApBufferPsFrame(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @zmw_get_wlan_dev(i32* %15)
  %17 = call i32 (...) @zmw_declare_for_critical_section()
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @ZM_MAX_AP_SUPPORT, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i64, i64* %7, align 8
  store i64 %22, i64* %10, align 8
  br label %23

23:                                               ; preds = %21, %3
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %6, align 8
  %26 = call i64 @zmw_rx_buf_readh(i32* %24, i32* %25, i32 0)
  %27 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  store i64 %26, i64* %27, align 16
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = call i64 @zmw_rx_buf_readh(i32* %28, i32* %29, i32 2)
  %31 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  store i64 %30, i64* %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @zmw_rx_buf_readh(i32* %32, i32* %33, i32 4)
  %35 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  store i64 %34, i64* %35, align 16
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %37 = load i64, i64* %36, align 16
  %38 = and i64 %37, 1
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %112

40:                                               ; preds = %23
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %111

46:                                               ; preds = %40
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @zmw_enter_critical_section(i32* %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* @ZM_BCMC_ARRAY_SIZE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %56, %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %10, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %59, %66
  br i1 %67, label %68, label %101

68:                                               ; preds = %46
  %69 = load i32*, i32** %6, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 8
  %73 = load i32***, i32**** %72, align 8
  %74 = load i64, i64* %10, align 8
  %75 = getelementptr inbounds i32**, i32*** %73, i64 %74
  %76 = load i32**, i32*** %75, align 8
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32*, i32** %76, i64 %85
  store i32* %69, i32** %86, align 8
  %87 = load i32, i32* @ZM_BCMC_ARRAY_SIZE, align 4
  %88 = sub nsw i32 %87, 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %88
  store i32 %96, i32* %94, align 4
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @zmw_leave_critical_section(i32* %97)
  %99 = load i32, i32* @ZM_LV_0, align 4
  %100 = call i32 @zm_msg0_tx(i32 %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %110

101:                                              ; preds = %46
  %102 = load i32*, i32** %5, align 8
  %103 = call i32 @zmw_leave_critical_section(i32* %102)
  %104 = load i32, i32* @ZM_LV_0, align 4
  %105 = call i32 @zm_msg0_tx(i32 %104, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* @ZM_ERR_BCMC_PS_BUFFER_UNAVAILABLE, align 4
  %109 = call i32 @zfwBufFree(i32* %106, i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %101, %68
  store i64 1, i64* %4, align 8
  br label %238

111:                                              ; preds = %40
  br label %237

112:                                              ; preds = %23
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @zmw_enter_critical_section(i32* %113)
  %115 = load i32*, i32** %5, align 8
  %116 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %117 = call i64 @zfApFindSta(i32* %115, i64* %116)
  store i64 %117, i64* %8, align 8
  %118 = icmp ne i64 %117, 65535
  br i1 %118, label %119, label %234

119:                                              ; preds = %112
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %233

129:                                              ; preds = %119
  %130 = load i32*, i32** %5, align 8
  %131 = load i32*, i32** %6, align 8
  %132 = call i32 @zfTxGetIpTosAndFrag(i32* %130, i32* %131, i32* %11, i64* %12)
  %133 = load i32*, i32** @zcUpToAc, align 8
  %134 = load i32, i32* %11, align 4
  %135 = and i32 %134, 7
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = and i32 %138, 3
  store i32 %139, i32* %13, align 4
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 7
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i64, i64* %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %184

149:                                              ; preds = %129
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = load i64, i64* %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %13, align 4
  %159 = ashr i32 8, %158
  %160 = and i32 %157, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %184

162:                                              ; preds = %149
  %163 = load i32*, i32** %5, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 6
  %167 = load i32, i32* %166, align 8
  %168 = load i32*, i32** %6, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i64 @zfQueuePutNcs(i32* %163, i32 %167, i32* %168, i32 %171)
  store i64 %172, i64* %14, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = call i32 @zmw_leave_critical_section(i32* %173)
  %175 = load i64, i64* %14, align 8
  %176 = load i64, i64* @ZM_SUCCESS, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %183

178:                                              ; preds = %162
  %179 = load i32*, i32** %5, align 8
  %180 = load i32*, i32** %6, align 8
  %181 = load i32, i32* @ZM_ERR_AP_UAPSD_QUEUE_FULL, align 4
  %182 = call i32 @zfwBufFree(i32* %179, i32* %180, i32 %181)
  br label %183

183:                                              ; preds = %178, %162
  br label %232

184:                                              ; preds = %149, %129
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* @ZM_UNI_ARRAY_SIZE, align 4
  %191 = sub nsw i32 %190, 1
  %192 = and i32 %189, %191
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %192, %196
  br i1 %197, label %198, label %222

198:                                              ; preds = %184
  %199 = load i32*, i32** %6, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 5
  %203 = load i32**, i32*** %202, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %206, align 8
  %209 = sext i32 %207 to i64
  %210 = getelementptr inbounds i32*, i32** %203, i64 %209
  store i32* %199, i32** %210, align 8
  %211 = load i32, i32* @ZM_UNI_ARRAY_SIZE, align 4
  %212 = sub nsw i32 %211, 1
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = and i32 %216, %212
  store i32 %217, i32* %215, align 8
  %218 = load i32*, i32** %5, align 8
  %219 = call i32 @zmw_leave_critical_section(i32* %218)
  %220 = load i32, i32* @ZM_LV_0, align 4
  %221 = call i32 @zm_msg0_tx(i32 %220, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %231

222:                                              ; preds = %184
  %223 = load i32*, i32** %5, align 8
  %224 = call i32 @zmw_leave_critical_section(i32* %223)
  %225 = load i32, i32* @ZM_LV_0, align 4
  %226 = call i32 @zm_msg0_tx(i32 %225, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %227 = load i32*, i32** %5, align 8
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* @ZM_ERR_UNI_PS_BUFFER_UNAVAILABLE, align 4
  %230 = call i32 @zfwBufFree(i32* %227, i32* %228, i32 %229)
  br label %231

231:                                              ; preds = %222, %198
  br label %232

232:                                              ; preds = %231, %183
  store i64 1, i64* %4, align 8
  br label %238

233:                                              ; preds = %119
  br label %234

234:                                              ; preds = %233, %112
  %235 = load i32*, i32** %5, align 8
  %236 = call i32 @zmw_leave_critical_section(i32* %235)
  br label %237

237:                                              ; preds = %234, %111
  store i64 0, i64* %4, align 8
  br label %238

238:                                              ; preds = %237, %232, %110
  %239 = load i64, i64* %4, align 8
  ret i64 %239
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i64 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_msg0_tx(i32, i8*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

declare dso_local i64 @zfApFindSta(i32*, i64*) #1

declare dso_local i32 @zfTxGetIpTosAndFrag(i32*, i32*, i32*, i64*) #1

declare dso_local i64 @zfQueuePutNcs(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
