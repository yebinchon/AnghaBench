; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_free_busy_send_packets.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_free_busy_send_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, i32*, i64, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.list_head* }
%struct.list_head = type { i32 }

@NUM_TCB = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @et131x_free_busy_send_packets(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  store i64 0, i64* %6, align 8
  br label %8

8:                                                ; preds = %15, %1
  %9 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 4
  %12 = call i32 @list_empty(%struct.TYPE_7__* %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br i1 %14, label %15, label %34

15:                                               ; preds = %8
  %16 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %16, i32 0, i32 2
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_lock_irqsave(i32* %17, i64 %18)
  %20 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %25, i32 0, i32 2
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  %29 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %30 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.list_head*, %struct.list_head** %32, align 8
  store %struct.list_head* %33, %struct.list_head** %4, align 8
  br label %8

34:                                               ; preds = %8
  %35 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %38, i32 0, i32 1
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_lock_irqsave(i32* %39, i64 %40)
  %42 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  store %struct.TYPE_6__* %45, %struct.TYPE_6__** %3, align 8
  br label %46

46:                                               ; preds = %69, %34
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %48 = icmp ne %struct.TYPE_6__* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @NUM_TCB, align 8
  %52 = icmp slt i64 %50, %51
  br label %53

53:                                               ; preds = %49, %46
  %54 = phi i1 [ false, %46 ], [ %52, %49 ]
  br i1 %54, label %55, label %92

55:                                               ; preds = %53
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %7, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %62, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = icmp eq %struct.TYPE_6__* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %65, %55
  %70 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %72, align 8
  %75 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %75, i32 0, i32 1
  %77 = load i64, i64* %5, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  %79 = load i64, i64* %6, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %6, align 8
  %81 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %83 = call i32 @et131x_free_send_packet(%struct.et131x_adapter* %81, %struct.TYPE_6__* %82)
  %84 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %84, i32 0, i32 1
  %86 = load i64, i64* %5, align 8
  %87 = call i32 @spin_lock_irqsave(i32* %85, i64 %86)
  %88 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  store %struct.TYPE_6__* %91, %struct.TYPE_6__** %3, align 8
  br label %46

92:                                               ; preds = %53
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @NUM_TCB, align 8
  %95 = icmp eq i64 %93, %94
  %96 = zext i1 %95 to i32
  %97 = call i32 @WARN_ON(i32 %96)
  %98 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %98, i32 0, i32 1
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  ret void
}

declare dso_local i32 @list_empty(%struct.TYPE_7__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @et131x_free_send_packet(%struct.et131x_adapter*, %struct.TYPE_6__*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
