; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_error_timer_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et131x_initpci.c_et131x_error_timer_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, i64, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@ET_PM_PHY_SW_COMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No interrupts, in PHY coma, pm_csr = 0x%x\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@TX_ERROR_PERIOD = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et131x_error_timer_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.et131x_adapter*
  store %struct.et131x_adapter* %6, %struct.et131x_adapter** %3, align 8
  %7 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %7, i32 0, i32 5
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = call i32 @readl(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ET_PM_PHY_SW_COMA, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %19 = call i32 @UpdateMacStatHostCounters(%struct.et131x_adapter* %18)
  br label %27

20:                                               ; preds = %1
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %21, i32 0, i32 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %20, %17
  %28 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %27
  %35 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %43, 11
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %45, %39, %34, %27
  %52 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %81

57:                                               ; preds = %51
  %58 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %57
  %65 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @ET_PM_PHY_SW_COMA, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %76 = call i32 @et131x_enable_interrupts(%struct.et131x_adapter* %75)
  %77 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %78 = call i32 @EnablePhyComa(%struct.et131x_adapter* %77)
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %64, %57
  br label %81

81:                                               ; preds = %80, %51
  %82 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %82, i32 0, i32 0
  %84 = load i64, i64* @jiffies, align 8
  %85 = load i32, i32* @TX_ERROR_PERIOD, align 4
  %86 = load i32, i32* @HZ, align 4
  %87 = mul nsw i32 %85, %86
  %88 = sdiv i32 %87, 1000
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %84, %89
  %91 = call i32 @mod_timer(i32* %83, i64 %90)
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @UpdateMacStatHostCounters(%struct.et131x_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @et131x_enable_interrupts(%struct.et131x_adapter*) #1

declare dso_local i32 @EnablePhyComa(%struct.et131x_adapter*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
