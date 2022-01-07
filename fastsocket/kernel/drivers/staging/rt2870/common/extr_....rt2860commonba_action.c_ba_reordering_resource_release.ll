; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonba_action.c_ba_reordering_resource_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonba_action.c_ba_reordering_resource_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, %struct.TYPE_13__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.reordering_mpdu = type { i32 }

@MAX_LEN_OF_BA_REC_TABLE = common dso_local global i32 0, align 4
@Recipient_NONE = common dso_local global i64 0, align 8
@NDIS_STATUS_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ba_reordering_resource_release(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.reordering_mpdu*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store %struct.TYPE_13__* %8, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = call i32 @NdisAcquireSpinLock(i32* %10)
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_LEN_OF_BA_REC_TABLE, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %21
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %4, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @Recipient_NONE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %34, %28
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = call %struct.reordering_mpdu* @ba_reordering_mpdu_dequeue(%struct.TYPE_14__* %31)
  store %struct.reordering_mpdu* %32, %struct.reordering_mpdu** %5, align 8
  %33 = icmp ne %struct.reordering_mpdu* %32, null
  br i1 %33, label %34, label %48

34:                                               ; preds = %29
  %35 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %5, align 8
  %36 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %40 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %5, align 8
  %41 = getelementptr inbounds %struct.reordering_mpdu, %struct.reordering_mpdu* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  %44 = call i32 @RELEASE_NDIS_PACKET(%struct.TYPE_11__* %39, i32 %42, i32 %43)
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %5, align 8
  %47 = call i32 @ba_mpdu_blk_free(%struct.TYPE_11__* %45, %struct.reordering_mpdu* %46)
  br label %29

48:                                               ; preds = %29
  br label %49

49:                                               ; preds = %48, %16
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %12

53:                                               ; preds = %12
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = call i32 @NdisReleaseSpinLock(i32* %55)
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = call i32 @NdisAcquireSpinLock(i32* %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @os_free_mem(%struct.TYPE_11__* %68, i32 %72)
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = call i32 @NdisReleaseSpinLock(i32* %76)
  ret void
}

declare dso_local i32 @NdisAcquireSpinLock(i32*) #1

declare dso_local %struct.reordering_mpdu* @ba_reordering_mpdu_dequeue(%struct.TYPE_14__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RELEASE_NDIS_PACKET(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ba_mpdu_blk_free(%struct.TYPE_11__*, %struct.reordering_mpdu*) #1

declare dso_local i32 @NdisReleaseSpinLock(i32*) #1

declare dso_local i32 @os_free_mem(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
