; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanShowTally.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_coid.c_zfiWlanShowTally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Hw_UnderrunCnt    = \00", align 1
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Hw_TotalRxFrm     = \00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Hw_CRC32Cnt       = \00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Hw_CRC16Cnt       = \00", align 1
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Hw_DecrypErr_UNI  = \00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Hw_RxFIFOOverrun  = \00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Hw_DecrypErr_Mul  = \00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Hw_RetryCnt       = \00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Hw_TotalTxFrm     = \00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Hw_RxTimeOut      = \00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Tx_MPDU           = \00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"BA_Fail           = \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Hw_Tx_AMPDU       = \00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"Hw_Tx_MPDU        = \00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Hw_RxMPDU          = \00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Hw_RxDropMPDU      = \00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Hw_RxDelMPDU       = \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyMiscError  = \00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyXRError    = \00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyOFDMError  = \00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyCCKError   = \00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyHTError    = \00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"Hw_RxPhyTotalCount = \00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c"BA Fail Ratio(%)  = \00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"Avg Agg Number    = \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfiWlanShowTally(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = call i32 @zmw_get_wlan_dev(i32* %3)
  %5 = load i32, i32* @ZM_LV_0, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @zm_msg1_mm(i32 %5, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @ZM_LV_0, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @zm_msg1_mm(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @ZM_LV_0, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @zm_msg1_mm(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @ZM_LV_0, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @zm_msg1_mm(i32 %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ZM_LV_1, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @zm_msg1_mm(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ZM_LV_0, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @zm_msg1_mm(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @ZM_LV_1, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @zm_msg1_mm(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ZM_LV_1, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @zm_msg1_mm(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @ZM_LV_0, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @zm_msg1_mm(i32 %53, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ZM_LV_0, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @zm_msg1_mm(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ZM_LV_0, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @zm_msg1_mm(i32 %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @ZM_LV_0, align 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @zm_msg1_mm(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @ZM_LV_0, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 12
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @zm_msg1_mm(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @ZM_LV_0, align 4
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 13
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @zm_msg1_mm(i32 %83, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @ZM_LV_1, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 14
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @zm_msg1_mm(i32 %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @ZM_LV_1, align 4
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 15
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @zm_msg1_mm(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ZM_LV_1, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 16
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @zm_msg1_mm(i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ZM_LV_1, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 17
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @zm_msg1_mm(i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %111)
  %113 = load i32, i32* @ZM_LV_1, align 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 18
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @zm_msg1_mm(i32 %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @ZM_LV_1, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 19
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @zm_msg1_mm(i32 %119, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0), i32 %123)
  %125 = load i32, i32* @ZM_LV_1, align 4
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 20
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @zm_msg1_mm(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0), i32 %129)
  %131 = load i32, i32* @ZM_LV_1, align 4
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 21
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @zm_msg1_mm(i32 %131, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i64 0, i64 0), i32 %135)
  %137 = load i32, i32* @ZM_LV_1, align 4
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 22
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @zm_msg1_mm(i32 %137, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i64 0, i64 0), i32 %141)
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 10
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %1
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 11
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %170, label %154

154:                                              ; preds = %148, %1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 11
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %158, 100
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 11
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 10
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %163, %167
  %169 = call i32 @zm_debug_msg_p(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i32 %159, i32 %168)
  br label %170

170:                                              ; preds = %154, %148
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 13
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 12
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %176, %170
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 13
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 12
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @zm_debug_msg_p(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 %186, i32 %190)
  br label %192

192:                                              ; preds = %182, %176
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zm_msg1_mm(i32, i8*, i32) #1

declare dso_local i32 @zm_debug_msg_p(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
