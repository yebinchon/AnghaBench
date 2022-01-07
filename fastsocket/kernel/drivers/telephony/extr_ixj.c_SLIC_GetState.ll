; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_SLIC_GetState.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/telephony/extr_ixj.c_SLIC_GetState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, %struct.TYPE_17__, i64, %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64 }

@QTI_PHONECARD = common dso_local global i64 0, align 8
@PLD_SLIC_STATE_OC = common dso_local global i32 0, align 4
@PLD_SLIC_STATE_ACTIVE = common dso_local global i32 0, align 4
@PLD_SLIC_STATE_RINGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @SLIC_GetState to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SLIC_GetState(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @QTI_PHONECARD, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %70

9:                                                ; preds = %1
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  store i32 3, i32* %16, align 4
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %24, 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 0
  %30 = call i32 @outw_p(i32 %25, i64 %29)
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_18__* %31)
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 0
  %37 = call i32 @inw_p(i64 %36)
  %38 = and i32 %37, 255
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = call i32 @ixj_PCcontrol_wait(%struct.TYPE_18__* %42)
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %9
  %51 = load i32, i32* @PLD_SLIC_STATE_OC, align 4
  store i32 %51, i32* %2, align 4
  br label %85

52:                                               ; preds = %9
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @PLD_SLIC_STATE_ACTIVE, align 4
  store i32 %67, i32* %2, align 4
  br label %85

68:                                               ; preds = %59, %52
  %69 = load i32, i32* @PLD_SLIC_STATE_RINGING, align 4
  store i32 %69, i32* %2, align 4
  br label %85

70:                                               ; preds = %1
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 1
  %75 = call i32 @inb_p(i64 %74)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %70
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %68, %66, %50
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @outw_p(i32, i64) #1

declare dso_local i32 @ixj_PCcontrol_wait(%struct.TYPE_18__*) #1

declare dso_local i32 @inw_p(i64) #1

declare dso_local i32 @inb_p(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
