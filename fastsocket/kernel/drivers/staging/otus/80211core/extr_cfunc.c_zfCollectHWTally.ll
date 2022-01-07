; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfCollectHWTally.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cfunc.c_zfCollectHWTally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"rsplen =\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Hw_UnderrunCnt    = \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Hw_TotalRxFrm     = \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Hw_CRC32Cnt       = \00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Hw_CRC16Cnt       = \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Hw_DecrypErr_UNI  = \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Hw_RxFIFOOverrun  = \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Hw_DecrypErr_Mul  = \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Hw_RetryCnt       = \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Hw_TotalTxFrm     = \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Hw_RxTimeOut      = \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Tx_MPDU           = \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"BA_Fail           = \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Hw_Tx_AMPDU       = \00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Hw_Tx_MPDU        = \00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"rsplen             = \00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Hw_RxMPDU          = \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Hw_RxDropMPDU      = \00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Hw_RxDelMPDU       = \00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyMiscError  = \00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyXRError    = \00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyOFDMError  = \00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyCCKError   = \00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyHTError    = \00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyTotalCount = \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfCollectHWTally(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @zmw_get_wlan_dev(i32* %7)
  %9 = call i32 (...) @zmw_declare_for_critical_section()
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @zmw_enter_critical_section(i32* %10)
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %144

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 65535, %17
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, %18
  store i32 %23, i32* %21, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %42
  store i32 %47, i32* %45, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %50
  store i32 %55, i32* %53, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, %66
  store i32 %71, i32* %69, align 4
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, %74
  store i32 %79, i32* %77, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 9
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, %82
  store i32 %87, i32* %85, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 10
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %90
  store i32 %95, i32* %93, align 4
  %96 = load i32*, i32** %5, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 11
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %98
  store i32 %103, i32* %101, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 12
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 11
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, %106
  store i32 %111, i32* %109, align 4
  %112 = load i32*, i32** %5, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 13
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 12
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %114
  store i32 %119, i32* %117, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 14
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 13
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, %122
  store i32 %127, i32* %125, align 4
  %128 = load i32*, i32** %5, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 11
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 14
  %134 = load i32, i32* %133, align 4
  %135 = add nsw i32 %134, %130
  store i32 %135, i32* %133, align 4
  %136 = load i32*, i32** %5, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 12
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 15
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %138
  store i32 %143, i32* %141, align 4
  br label %217

144:                                              ; preds = %3
  %145 = load i32*, i32** %5, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 16
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, %147
  store i32 %152, i32* %150, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 17
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %159, %155
  store i32 %160, i32* %158, align 4
  %161 = load i32*, i32** %5, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 18
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, %163
  store i32 %168, i32* %166, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 4
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 19
  %175 = load i32, i32* %174, align 4
  %176 = add nsw i32 %175, %171
  store i32 %176, i32* %174, align 4
  %177 = load i32*, i32** %5, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 5
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 20
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, %179
  store i32 %184, i32* %182, align 4
  %185 = load i32*, i32** %5, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 21
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %187
  store i32 %192, i32* %190, align 4
  %193 = load i32*, i32** %5, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 7
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 22
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, %195
  store i32 %200, i32* %198, align 4
  %201 = load i32*, i32** %5, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 8
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 23
  %207 = load i32, i32* %206, align 4
  %208 = add nsw i32 %207, %203
  store i32 %208, i32* %206, align 4
  %209 = load i32*, i32** %5, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 9
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 24
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %215, %211
  store i32 %216, i32* %214, align 4
  br label %217

217:                                              ; preds = %144, %14
  %218 = load i32*, i32** %4, align 8
  %219 = call i32 @zmw_leave_critical_section(i32* %218)
  %220 = load i64, i64* %6, align 8
  %221 = icmp eq i64 %220, 0
  br i1 %221, label %222, label %299

222:                                              ; preds = %217
  %223 = load i32, i32* @ZM_LV_1, align 4
  %224 = load i32*, i32** %5, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @zm_msg1_mm(i32 %223, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %226)
  %228 = load i32, i32* @ZM_LV_1, align 4
  %229 = load i32*, i32** %5, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = and i32 65535, %231
  %233 = call i32 @zm_msg1_mm(i32 %228, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* @ZM_LV_1, align 4
  %235 = load i32*, i32** %5, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 2
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @zm_msg1_mm(i32 %234, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* @ZM_LV_1, align 4
  %240 = load i32*, i32** %5, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 3
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @zm_msg1_mm(i32 %239, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %242)
  %244 = load i32, i32* @ZM_LV_1, align 4
  %245 = load i32*, i32** %5, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 4
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @zm_msg1_mm(i32 %244, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* @ZM_LV_1, align 4
  %250 = load i32*, i32** %5, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 5
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @zm_msg1_mm(i32 %249, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %252)
  %254 = load i32, i32* @ZM_LV_1, align 4
  %255 = load i32*, i32** %5, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 6
  %257 = load i32, i32* %256, align 4
  %258 = call i32 @zm_msg1_mm(i32 %254, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %257)
  %259 = load i32, i32* @ZM_LV_1, align 4
  %260 = load i32*, i32** %5, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 7
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @zm_msg1_mm(i32 %259, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* @ZM_LV_1, align 4
  %265 = load i32*, i32** %5, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 8
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @zm_msg1_mm(i32 %264, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* @ZM_LV_1, align 4
  %270 = load i32*, i32** %5, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 9
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @zm_msg1_mm(i32 %269, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %272)
  %274 = load i32, i32* @ZM_LV_1, align 4
  %275 = load i32*, i32** %5, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 10
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @zm_msg1_mm(i32 %274, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %277)
  %279 = load i32, i32* @ZM_LV_1, align 4
  %280 = load i32*, i32** %5, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 11
  %282 = load i32, i32* %281, align 4
  %283 = call i32 @zm_msg1_mm(i32 %279, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %282)
  %284 = load i32, i32* @ZM_LV_1, align 4
  %285 = load i32*, i32** %5, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 12
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @zm_msg1_mm(i32 %284, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %287)
  %289 = load i32, i32* @ZM_LV_1, align 4
  %290 = load i32*, i32** %5, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 13
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @zm_msg1_mm(i32 %289, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %292)
  %294 = load i32, i32* @ZM_LV_1, align 4
  %295 = load i32*, i32** %5, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 14
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @zm_msg1_mm(i32 %294, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0), i32 %297)
  br label %351

299:                                              ; preds = %217
  %300 = load i32, i32* @ZM_LV_1, align 4
  %301 = load i32*, i32** %5, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @zm_msg1_mm(i32 %300, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %303)
  %305 = load i32, i32* @ZM_LV_1, align 4
  %306 = load i32*, i32** %5, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 1
  %308 = load i32, i32* %307, align 4
  %309 = and i32 65535, %308
  %310 = call i32 @zm_msg1_mm(i32 %305, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %309)
  %311 = load i32, i32* @ZM_LV_1, align 4
  %312 = load i32*, i32** %5, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 2
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @zm_msg1_mm(i32 %311, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %314)
  %316 = load i32, i32* @ZM_LV_1, align 4
  %317 = load i32*, i32** %5, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 3
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @zm_msg1_mm(i32 %316, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %319)
  %321 = load i32, i32* @ZM_LV_1, align 4
  %322 = load i32*, i32** %5, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 4
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @zm_msg1_mm(i32 %321, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %324)
  %326 = load i32, i32* @ZM_LV_1, align 4
  %327 = load i32*, i32** %5, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 5
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @zm_msg1_mm(i32 %326, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %329)
  %331 = load i32, i32* @ZM_LV_1, align 4
  %332 = load i32*, i32** %5, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 6
  %334 = load i32, i32* %333, align 4
  %335 = call i32 @zm_msg1_mm(i32 %331, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %334)
  %336 = load i32, i32* @ZM_LV_1, align 4
  %337 = load i32*, i32** %5, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 7
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @zm_msg1_mm(i32 %336, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %339)
  %341 = load i32, i32* @ZM_LV_1, align 4
  %342 = load i32*, i32** %5, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 8
  %344 = load i32, i32* %343, align 4
  %345 = call i32 @zm_msg1_mm(i32 %341, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i32 %344)
  %346 = load i32, i32* @ZM_LV_1, align 4
  %347 = load i32*, i32** %5, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 9
  %349 = load i32, i32* %348, align 4
  %350 = call i32 @zm_msg1_mm(i32 %346, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i32 %349)
  br label %351

351:                                              ; preds = %299, %222
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_msg1_mm(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
