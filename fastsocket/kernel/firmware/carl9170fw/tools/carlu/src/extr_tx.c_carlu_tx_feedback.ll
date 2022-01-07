; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_tx.c_carlu_tx_feedback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/tools/carlu/src/extr_tx.c_carlu_tx_feedback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carlu = type { i32 }
%struct.carl9170_rsp = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.frame = type { i32 }
%struct.carlu_tx_info = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@CARL9170_TX_STATUS_QUEUE_S = common dso_local global i32 0, align 4
@CARL9170_TX_STATUS_QUEUE = common dso_local global i32 0, align 4
@CARL9170_TX_STATUS_RIX = common dso_local global i32 0, align 4
@CARL9170_TX_STATUS_RIX_S = common dso_local global i32 0, align 4
@CARL9170_TX_STATUS_TRIES_S = common dso_local global i32 0, align 4
@CARL9170_TX_STATUS_TRIES = common dso_local global i32 0, align 4
@CARL9170_TX_MAX_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Found no frame for cookie %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carlu_tx_feedback(%struct.carlu* %0, %struct.carl9170_rsp* %1) #0 {
  %3 = alloca %struct.carlu*, align 8
  %4 = alloca %struct.carl9170_rsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.frame*, align 8
  %10 = alloca %struct.carlu_tx_info*, align 8
  store %struct.carlu* %0, %struct.carlu** %3, align 8
  store %struct.carl9170_rsp* %1, %struct.carl9170_rsp** %4, align 8
  %11 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %12 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %121, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %124

19:                                               ; preds = %15
  %20 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %21 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CARL9170_TX_STATUS_QUEUE_S, align 4
  %29 = lshr i32 %27, %28
  %30 = load i32, i32* @CARL9170_TX_STATUS_QUEUE, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.carlu*, %struct.carlu** %3, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %35 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.frame* @carlu_find_frame(%struct.carlu* %32, i32 %33, i32 %41)
  store %struct.frame* %42, %struct.frame** %9, align 8
  %43 = load %struct.frame*, %struct.frame** %9, align 8
  %44 = icmp ne %struct.frame* %43, null
  br i1 %44, label %45, label %110

45:                                               ; preds = %19
  %46 = load %struct.carlu*, %struct.carlu** %3, align 8
  %47 = load %struct.frame*, %struct.frame** %9, align 8
  %48 = call i32 @carlu_free_dev_mem(%struct.carlu* %46, %struct.frame* %47)
  %49 = load %struct.frame*, %struct.frame** %9, align 8
  %50 = call %struct.carlu_tx_info* @get_tx_info(%struct.frame* %49)
  store %struct.carlu_tx_info* %50, %struct.carlu_tx_info** %10, align 8
  %51 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %52 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @CARL9170_TX_STATUS_RIX, align 4
  %60 = lshr i32 %58, %59
  %61 = load i32, i32* @CARL9170_TX_STATUS_RIX_S, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %64 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CARL9170_TX_STATUS_TRIES_S, align 4
  %72 = lshr i32 %70, %71
  %73 = load i32, i32* @CARL9170_TX_STATUS_TRIES, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.carlu_tx_info*, %struct.carlu_tx_info** %10, align 8
  %76 = getelementptr inbounds %struct.carlu_tx_info, %struct.carlu_tx_info* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 %74, i32* %81, align 4
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %103, %45
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @CARL9170_TX_MAX_RATES, align 4
  %87 = icmp ult i32 %85, %86
  br i1 %87, label %88, label %106

88:                                               ; preds = %84
  %89 = load %struct.carlu_tx_info*, %struct.carlu_tx_info** %10, align 8
  %90 = getelementptr inbounds %struct.carlu_tx_info, %struct.carlu_tx_info* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  store i32 -1, i32* %95, align 4
  %96 = load %struct.carlu_tx_info*, %struct.carlu_tx_info** %10, align 8
  %97 = getelementptr inbounds %struct.carlu_tx_info, %struct.carlu_tx_info* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i32 -1, i32* %102, align 4
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %7, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %7, align 4
  br label %84

106:                                              ; preds = %84
  %107 = load %struct.carlu*, %struct.carlu** %3, align 8
  %108 = load %struct.frame*, %struct.frame** %9, align 8
  %109 = call i32 @carlu_tx_fb_cb(%struct.carlu* %107, %struct.frame* %108)
  br label %120

110:                                              ; preds = %19
  %111 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %4, align 8
  %112 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %111, i32 0, i32 0
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %110, %106
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %5, align 4
  br label %15

124:                                              ; preds = %15
  ret void
}

declare dso_local %struct.frame* @carlu_find_frame(%struct.carlu*, i32, i32) #1

declare dso_local i32 @carlu_free_dev_mem(%struct.carlu*, %struct.frame*) #1

declare dso_local %struct.carlu_tx_info* @get_tx_info(%struct.frame*) #1

declare dso_local i32 @carlu_tx_fb_cb(%struct.carlu*, %struct.frame*) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
