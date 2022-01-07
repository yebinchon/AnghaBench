; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_update_tcb_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_update_tcb_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__*, i32* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ET_DMA10_WRAP = common dso_local global i32 0, align 4
@ET_DMA10_MASK = common dso_local global i32 0, align 4
@NUM_TCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_update_tcb_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_update_tcb_list(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %7 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %7, i32 0, i32 3
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = call i32 @readl(i32* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @INDEX10(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %5, align 8
  br label %23

23:                                               ; preds = %64, %1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = xor i32 %27, %30
  %32 = load i32, i32* @ET_DMA10_WRAP, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @INDEX10(i32 %39)
  %41 = icmp slt i32 %36, %40
  br label %42

42:                                               ; preds = %35, %26, %23
  %43 = phi i1 [ false, %26 ], [ false, %23 ], [ %41, %35 ]
  br i1 %43, label %44, label %80

44:                                               ; preds = %42
  %45 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store %struct.TYPE_9__* %52, %struct.TYPE_9__** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = icmp eq %struct.TYPE_9__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %44
  %61 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %60, %44
  %65 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %65, i32 0, i32 0
  %67 = load i64, i64* %3, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = call i32 @et131x_free_send_packet(%struct.et131x_adapter* %69, %struct.TYPE_9__* %70)
  %72 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %72, i32 0, i32 0
  %74 = load i64, i64* %3, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %78, align 8
  store %struct.TYPE_9__* %79, %struct.TYPE_9__** %5, align 8
  br label %23

80:                                               ; preds = %42
  br label %81

81:                                               ; preds = %123, %80
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = icmp ne %struct.TYPE_9__* %82, null
  br i1 %83, label %84, label %101

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = xor i32 %85, %88
  %90 = load i32, i32* @ET_DMA10_WRAP, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @ET_DMA10_MASK, align 4
  %99 = and i32 %97, %98
  %100 = icmp sgt i32 %94, %99
  br label %101

101:                                              ; preds = %93, %84, %81
  %102 = phi i1 [ false, %84 ], [ false, %81 ], [ %100, %93 ]
  br i1 %102, label %103, label %139

103:                                              ; preds = %101
  %104 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %106, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %110, align 8
  %112 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %113 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store %struct.TYPE_9__* %111, %struct.TYPE_9__** %114, align 8
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %116, align 8
  %118 = icmp eq %struct.TYPE_9__* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %103
  %120 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  br label %123

123:                                              ; preds = %119, %103
  %124 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %124, i32 0, i32 0
  %126 = load i64, i64* %3, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = call i32 @et131x_free_send_packet(%struct.et131x_adapter* %128, %struct.TYPE_9__* %129)
  %131 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %132 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %131, i32 0, i32 0
  %133 = load i64, i64* %3, align 8
  %134 = call i32 @spin_lock_irqsave(i32* %132, i64 %133)
  %135 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %136 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %5, align 8
  br label %81

139:                                              ; preds = %101
  %140 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %141 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @NUM_TCB, align 4
  %145 = sdiv i32 %144, 3
  %146 = icmp sle i32 %143, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %149 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @netif_wake_queue(i32 %150)
  br label %152

152:                                              ; preds = %147, %139
  %153 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %154 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %153, i32 0, i32 0
  %155 = load i64, i64* %3, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  ret void
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @INDEX10(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @et131x_free_send_packet(%struct.et131x_adapter*, %struct.TYPE_9__*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
