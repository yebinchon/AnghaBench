; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_hw_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/ymfpci/extr_ymfpci_main.c_snd_ymfpci_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_ymfpci = type { i64, i32, i32, i32 }

@YDSXGR_MODE = common dso_local global i32 0, align 4
@YDSXGR_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ymfpci*)* @snd_ymfpci_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_ymfpci_hw_stop(%struct.snd_ymfpci* %0) #0 {
  %2 = alloca %struct.snd_ymfpci*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.snd_ymfpci* %0, %struct.snd_ymfpci** %2, align 8
  store i64 1000, i64* %4, align 8
  %5 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %6 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %5, i32 0, i32 1
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @spin_lock_irqsave(i32* %6, i64 %7)
  %9 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %10 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, -1
  store i64 %12, i64* %10, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %48

15:                                               ; preds = %1
  %16 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %17 = load i32, i32* @YDSXGR_MODE, align 4
  %18 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %19 = load i32, i32* @YDSXGR_MODE, align 4
  %20 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %18, i32 %19)
  %21 = and i32 %20, -4
  %22 = call i32 @snd_ymfpci_writel(%struct.snd_ymfpci* %16, i32 %17, i32 %21)
  br label %23

23:                                               ; preds = %34, %15
  %24 = load i64, i64* %4, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %4, align 8
  %26 = icmp sgt i64 %24, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %29 = load i32, i32* @YDSXGR_STATUS, align 4
  %30 = call i32 @snd_ymfpci_readl(%struct.snd_ymfpci* %28, i32 %29)
  %31 = and i32 %30, 2
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %35

34:                                               ; preds = %27
  br label %23

35:                                               ; preds = %33, %23
  %36 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %37 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %36, i32 0, i32 3
  %38 = call i64 @atomic_read(i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %42 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %41, i32 0, i32 3
  %43 = call i32 @atomic_set(i32* %42, i32 0)
  %44 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %45 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %44, i32 0, i32 2
  %46 = call i32 @wake_up(i32* %45)
  br label %47

47:                                               ; preds = %40, %35
  br label %48

48:                                               ; preds = %47, %14
  %49 = load %struct.snd_ymfpci*, %struct.snd_ymfpci** %2, align 8
  %50 = getelementptr inbounds %struct.snd_ymfpci, %struct.snd_ymfpci* %49, i32 0, i32 1
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_ymfpci_writel(%struct.snd_ymfpci*, i32, i32) #1

declare dso_local i32 @snd_ymfpci_readl(%struct.snd_ymfpci*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
