; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonba_action.c_ba_reordering_resource_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rt2870/common/extr_....rt2860commonba_action.c_ba_reordering_resource_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.reordering_list, i32 }
%struct.reordering_list = type { i64, i32* }
%struct.reordering_mpdu = type { i32 }

@RT_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Allocate %d memory for BA reordering\0A\00", align 1
@RT_DEBUG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Can't Allocate Memory for BA Reordering\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ba_reordering_resource_init(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.reordering_mpdu*, align 8
  %9 = alloca %struct.reordering_list*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = call i32 @NdisAllocateSpinLock(i32* %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store %struct.reordering_list* %16, %struct.reordering_list** %9, align 8
  %17 = load %struct.reordering_list*, %struct.reordering_list** %9, align 8
  %18 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.reordering_list*, %struct.reordering_list** %9, align 8
  %20 = getelementptr inbounds %struct.reordering_list, %struct.reordering_list* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32, i32* @RT_DEBUG_TRACE, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 4
  %25 = trunc i64 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @DBGPRINT(i32 %21, i8* %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = call i32 @os_alloc_mem(%struct.TYPE_6__* %29, i32** %7, i32 %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32* %35, i32** %38, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load i32, i32* @RT_DEBUG_ERROR, align 4
  %43 = call i32 @DBGPRINT(i32 %42, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %65

45:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %60, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %46
  %51 = load i32*, i32** %7, align 8
  %52 = bitcast i32* %51 to %struct.reordering_mpdu*
  store %struct.reordering_mpdu* %52, %struct.reordering_mpdu** %8, align 8
  %53 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %8, align 8
  %54 = call i32 @NdisZeroMemory(%struct.reordering_mpdu* %53, i32 4)
  %55 = load i32*, i32** %7, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32* %56, i32** %7, align 8
  %57 = load %struct.reordering_list*, %struct.reordering_list** %9, align 8
  %58 = load %struct.reordering_mpdu*, %struct.reordering_mpdu** %8, align 8
  %59 = call i32 @ba_enqueue(%struct.reordering_list* %57, %struct.reordering_mpdu* %58)
  br label %60

60:                                               ; preds = %50
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %46

63:                                               ; preds = %46
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %41
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @NdisAllocateSpinLock(i32*) #1

declare dso_local i32 @DBGPRINT(i32, i8*) #1

declare dso_local i32 @os_alloc_mem(%struct.TYPE_6__*, i32**, i32) #1

declare dso_local i32 @NdisZeroMemory(%struct.reordering_mpdu*, i32) #1

declare dso_local i32 @ba_enqueue(%struct.reordering_list*, %struct.reordering_mpdu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
