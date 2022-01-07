; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_upr_request_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/slicoss/extr_slicoss.c_slic_upr_request_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, %struct.TYPE_10__, i64, %struct.TYPE_7__*, %struct.slicnet_stats, %struct.slic_stats, %struct.TYPE_6__*, i64, %struct.slic_upr*, %struct.sliccard* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.slicnet_stats = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.slic_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.slic_upr = type { i64, i32, %struct.slic_upr* }
%struct.sliccard = type { i32 }

@ISR_UPCERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SLIC_UPR_STATS command failed isr[%x]\0A\00", align 1
@ISR_PINGDSMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @slic_upr_request_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_upr_request_complete(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sliccard*, align 8
  %6 = alloca %struct.slic_upr*, align 8
  %7 = alloca %struct.slic_stats*, align 8
  %8 = alloca %struct.slic_stats*, align 8
  %9 = alloca %struct.slic_stats*, align 8
  %10 = alloca %struct.slicnet_stats*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 9
  %13 = load %struct.sliccard*, %struct.sliccard** %12, align 8
  store %struct.sliccard* %13, %struct.sliccard** %5, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %16, i32 %20)
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 8
  %24 = load %struct.slic_upr*, %struct.slic_upr** %23, align 8
  store %struct.slic_upr* %24, %struct.slic_upr** %6, align 8
  %25 = load %struct.slic_upr*, %struct.slic_upr** %6, align 8
  %26 = icmp ne %struct.slic_upr* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %2
  %28 = call i32 @ASSERT(i32 0)
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %31, i32 %35)
  br label %284

37:                                               ; preds = %2
  %38 = load %struct.slic_upr*, %struct.slic_upr** %6, align 8
  %39 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %38, i32 0, i32 2
  %40 = load %struct.slic_upr*, %struct.slic_upr** %39, align 8
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 8
  store %struct.slic_upr* %40, %struct.slic_upr** %42, align 8
  %43 = load %struct.slic_upr*, %struct.slic_upr** %6, align 8
  %44 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %43, i32 0, i32 2
  store %struct.slic_upr* null, %struct.slic_upr** %44, align 8
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 7
  store i64 0, i64* %46, align 8
  %47 = load %struct.adapter*, %struct.adapter** %3, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.slic_upr*, %struct.slic_upr** %6, align 8
  %51 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %49, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @ASSERT(i32 %54)
  %56 = load %struct.slic_upr*, %struct.slic_upr** %6, align 8
  %57 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %269 [
    i32 128, label %59
    i32 130, label %248
    i32 131, label %252
    i32 129, label %253
    i32 134, label %255
    i32 135, label %257
    i32 133, label %259
    i32 132, label %261
  ]

59:                                               ; preds = %37
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 6
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = bitcast i32* %63 to %struct.slic_stats*
  store %struct.slic_stats* %64, %struct.slic_stats** %7, align 8
  %65 = load %struct.slic_stats*, %struct.slic_stats** %7, align 8
  store %struct.slic_stats* %65, %struct.slic_stats** %8, align 8
  %66 = load %struct.adapter*, %struct.adapter** %3, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 5
  store %struct.slic_stats* %67, %struct.slic_stats** %9, align 8
  %68 = load %struct.adapter*, %struct.adapter** %3, align 8
  %69 = getelementptr inbounds %struct.adapter, %struct.adapter* %68, i32 0, i32 4
  store %struct.slicnet_stats* %69, %struct.slicnet_stats** %10, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @ISR_UPCERR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %59
  %75 = load %struct.adapter*, %struct.adapter** %3, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 3
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @dev_err(i32* %78, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %271

81:                                               ; preds = %59
  %82 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %83 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %87 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %86, i32 0, i32 12
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %90 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %89, i32 0, i32 12
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @UPDATE_STATS_GB(i32 %85, i64 %88, i64 %91)
  %93 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %94 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %98 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %97, i32 0, i32 11
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %101 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %100, i32 0, i32 11
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @UPDATE_STATS_GB(i32 %96, i64 %99, i64 %102)
  %104 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %105 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %109 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %108, i32 0, i32 10
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %112 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %111, i32 0, i32 10
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @UPDATE_STATS_GB(i32 %107, i64 %110, i64 %113)
  %115 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %116 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %120 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %119, i32 0, i32 9
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %123 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %122, i32 0, i32 9
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @UPDATE_STATS_GB(i32 %118, i64 %121, i64 %124)
  %126 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %127 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %131 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %130, i32 0, i32 8
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %134 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @UPDATE_STATS_GB(i32 %129, i64 %132, i64 %135)
  %137 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %138 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %142 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %141, i32 0, i32 7
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %145 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %144, i32 0, i32 7
  %146 = load i64, i64* %145, align 8
  %147 = call i32 @UPDATE_STATS_GB(i32 %140, i64 %143, i64 %146)
  %148 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %149 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %153 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %156 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @UPDATE_STATS_GB(i32 %151, i64 %154, i64 %157)
  %159 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %160 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %164 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %167 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @UPDATE_STATS_GB(i32 %162, i64 %165, i64 %168)
  %170 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %171 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %175 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %174, i32 0, i32 4
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %178 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = call i32 @UPDATE_STATS_GB(i32 %173, i64 %176, i64 %179)
  %181 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %182 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %186 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %189 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = call i32 @UPDATE_STATS_GB(i32 %184, i64 %187, i64 %190)
  %192 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %193 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %197 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %200 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = call i32 @UPDATE_STATS_GB(i32 %195, i64 %198, i64 %201)
  %203 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %204 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %208 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %211 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @UPDATE_STATS_GB(i32 %206, i64 %209, i64 %212)
  %214 = load %struct.slicnet_stats*, %struct.slicnet_stats** %10, align 8
  %215 = getelementptr inbounds %struct.slicnet_stats, %struct.slicnet_stats* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %219 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %222 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %221, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = call i32 @UPDATE_STATS_GB(i32 %217, i64 %220, i64 %223)
  %225 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %226 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %229 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %227, %230
  br i1 %231, label %232, label %244

232:                                              ; preds = %81
  %233 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %234 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %237 = getelementptr inbounds %struct.slic_stats, %struct.slic_stats* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = sub nsw i64 %235, %238
  %240 = load %struct.adapter*, %struct.adapter** %3, align 8
  %241 = getelementptr inbounds %struct.adapter, %struct.adapter* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = add nsw i64 %242, %239
  store i64 %243, i64* %241, align 8
  br label %244

244:                                              ; preds = %232, %81
  %245 = load %struct.slic_stats*, %struct.slic_stats** %9, align 8
  %246 = load %struct.slic_stats*, %struct.slic_stats** %8, align 8
  %247 = call i32 @memcpy(%struct.slic_stats* %245, %struct.slic_stats* %246, i32 104)
  br label %271

248:                                              ; preds = %37
  %249 = load %struct.adapter*, %struct.adapter** %3, align 8
  %250 = load i32, i32* %4, align 4
  %251 = call i32 @slic_link_upr_complete(%struct.adapter* %249, i32 %250)
  br label %271

252:                                              ; preds = %37
  br label %271

253:                                              ; preds = %37
  %254 = call i32 @ASSERT(i32 0)
  br label %271

255:                                              ; preds = %37
  %256 = call i32 @ASSERT(i32 0)
  br label %271

257:                                              ; preds = %37
  %258 = call i32 @ASSERT(i32 0)
  br label %271

259:                                              ; preds = %37
  %260 = call i32 @ASSERT(i32 0)
  br label %271

261:                                              ; preds = %37
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* @ISR_PINGDSMASK, align 4
  %264 = and i32 %262, %263
  %265 = load %struct.sliccard*, %struct.sliccard** %5, align 8
  %266 = getelementptr inbounds %struct.sliccard, %struct.sliccard* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = or i32 %267, %264
  store i32 %268, i32* %266, align 4
  br label %271

269:                                              ; preds = %37
  %270 = call i32 @ASSERT(i32 0)
  br label %271

271:                                              ; preds = %269, %261, %259, %257, %255, %253, %252, %248, %244, %74
  %272 = load %struct.slic_upr*, %struct.slic_upr** %6, align 8
  %273 = call i32 @kfree(%struct.slic_upr* %272)
  %274 = load %struct.adapter*, %struct.adapter** %3, align 8
  %275 = call i32 @slic_upr_start(%struct.adapter* %274)
  %276 = load %struct.adapter*, %struct.adapter** %3, align 8
  %277 = getelementptr inbounds %struct.adapter, %struct.adapter* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %277, i32 0, i32 1
  %279 = load %struct.adapter*, %struct.adapter** %3, align 8
  %280 = getelementptr inbounds %struct.adapter, %struct.adapter* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @spin_unlock_irqrestore(i32* %278, i32 %282)
  br label %284

284:                                              ; preds = %271, %27
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @UPDATE_STATS_GB(i32, i64, i64) #1

declare dso_local i32 @memcpy(%struct.slic_stats*, %struct.slic_stats*, i32) #1

declare dso_local i32 @slic_link_upr_complete(%struct.adapter*, i32) #1

declare dso_local i32 @kfree(%struct.slic_upr*) #1

declare dso_local i32 @slic_upr_start(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
