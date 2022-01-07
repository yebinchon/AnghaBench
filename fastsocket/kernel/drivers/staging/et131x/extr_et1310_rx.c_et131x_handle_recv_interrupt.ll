; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_rx.c_et131x_handle_recv_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_rx.c_et131x_handle_recv_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__, i32 }
%struct.TYPE_12__ = type { i64, i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@NUM_PACKETS_HANDLED = common dso_local global i32 0, align 4
@fMP_ADAPTER_LINK_DETECTION = common dso_local global i32 0, align 4
@RFD_LOW_WATER_MARK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"RFD's are running out\0A\00", align 1
@PARM_TX_TIME_INT_DEF = common dso_local global i32 0, align 4
@NANO_IN_A_MICRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et131x_handle_recv_interrupt(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %3, align 8
  %11 = load i32, i32* @NUM_PACKETS_HANDLED, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca %struct.sk_buff*, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @NUM_PACKETS_HANDLED, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca %struct.TYPE_13__*, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* @NUM_PACKETS_HANDLED, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %8, align 8
  br label %20

20:                                               ; preds = %86, %61, %1
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %94

24:                                               ; preds = %20
  %25 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = call i64 @list_empty(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @WARN_ON(i32 %36)
  store i32 1, i32* %10, align 4
  br label %94

38:                                               ; preds = %24
  %39 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %40 = call %struct.TYPE_13__* @nic_rx_pkts(%struct.et131x_adapter* %39)
  store %struct.TYPE_13__* %40, %struct.TYPE_13__** %3, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %42 = icmp eq %struct.TYPE_13__* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %94

44:                                               ; preds = %38
  %45 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @fMP_ADAPTER_LINK_DETECTION, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %49
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %49, %44
  br label %20

62:                                               ; preds = %56
  %63 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 8
  %68 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RFD_LOW_WATER_MARK, align 8
  %73 = icmp sge i64 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %86

75:                                               ; preds = %62
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %17, i64 %77
  store %struct.TYPE_13__* %76, %struct.TYPE_13__** %78, align 8
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  %81 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %81, i32 0, i32 3
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = call i32 @dev_warn(i32* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %75, %74
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 1
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %14, i64 %90
  store %struct.sk_buff* %89, %struct.sk_buff** %91, align 8
  %92 = load i64, i64* %7, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %7, align 8
  br label %20

94:                                               ; preds = %43, %30, %20
  %95 = load i64, i64* %7, align 8
  %96 = load i32, i32* @NUM_PACKETS_HANDLED, align 4
  %97 = sext i32 %96 to i64
  %98 = icmp eq i64 %95, %97
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %99, %94
  %103 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 8
  %106 = load i32, i32* @PARM_TX_TIME_INT_DEF, align 4
  %107 = load i32, i32* @NANO_IN_A_MICRO, align 4
  %108 = mul nsw i32 %106, %107
  %109 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %110 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %109, i32 0, i32 2
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = call i32 @writel(i32 %108, i32* %113)
  br label %119

115:                                              ; preds = %99
  %116 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  store i32 0, i32* %118, align 8
  br label %119

119:                                              ; preds = %115, %102
  %120 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %120)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @list_empty(i32*) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local %struct.TYPE_13__* @nic_rx_pkts(%struct.et131x_adapter*) #2

declare dso_local i32 @dev_warn(i32*, i8*) #2

declare dso_local i32 @writel(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
