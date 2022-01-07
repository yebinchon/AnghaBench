; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_check_send_wait_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/et131x/extr_et1310_tx.c_et131x_check_send_wait_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.list_head* }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_check_send_wait_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_check_send_wait_list(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.list_head*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %5 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %5, i32 0, i32 0
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  br label %9

9:                                                ; preds = %21, %1
  %10 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @list_empty(%struct.TYPE_4__* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %17 = call i64 @MP_TCB_RESOURCES_AVAILABLE(%struct.et131x_adapter* %16)
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %15, %9
  %20 = phi i1 [ false, %9 ], [ %18, %15 ]
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.list_head*, %struct.list_head** %25, align 8
  store %struct.list_head* %26, %struct.list_head** %4, align 8
  %27 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  br label %9

32:                                               ; preds = %19
  %33 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %3, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(%struct.TYPE_4__*) #1

declare dso_local i64 @MP_TCB_RESOURCES_AVAILABLE(%struct.et131x_adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
